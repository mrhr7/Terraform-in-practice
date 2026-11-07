"""A tiny remote state service for the demo. It keeps the state and its lock in files.
Real teams use S3, Azure Storage, GCS or HCP Terraform; their locks behave the same way."""
import os
from http.server import BaseHTTPRequestHandler, HTTPServer

STATE, LOCK = "/tmp/remote/state.json", "/tmp/remote/lock.json"


class Handler(BaseHTTPRequestHandler):
    def body(self):
        return self.rfile.read(int(self.headers.get("Content-Length", 0)))

    def reply(self, code, data=b""):
        self.send_response(code)
        self.send_header("Content-Length", str(len(data)))
        self.end_headers()
        self.wfile.write(data)

    def do_GET(self):            # read state
        if os.path.exists(STATE):
            return self.reply(200, open(STATE, "rb").read())
        self.reply(404)

    def do_POST(self):           # write state
        open(STATE, "wb").write(self.body())
        self.reply(200)

    def do_LOCK(self):           # take the lock, or say who holds it
        info = self.body()
        if os.path.exists(LOCK):
            return self.reply(423, open(LOCK, "rb").read())
        open(LOCK, "wb").write(info)
        self.reply(200)

    def do_UNLOCK(self):         # release the lock
        self.body()
        if os.path.exists(LOCK):
            os.remove(LOCK)
        self.reply(200)

    def log_message(self, *args):
        pass


os.makedirs("/tmp/remote", exist_ok=True)
HTTPServer(("127.0.0.1", 8080), Handler).serve_forever()
