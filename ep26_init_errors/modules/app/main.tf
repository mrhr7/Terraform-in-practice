# kubectl_manifest comes from a community provider, not from HashiCorp.
resource "kubectl_manifest" "namespace" {
  yaml_body = <<-YAML
    apiVersion: v1
    kind: Namespace
    metadata:
      name: shop
  YAML
}
