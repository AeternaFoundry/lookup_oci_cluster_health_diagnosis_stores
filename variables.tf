variable "cluster_health_diagnosis_stores_lookup" {
  description = <<EOT
Map of cluster_health_diagnosis_stores_lookup, attributes below
Optional:
    - compartment_id
    - diagnosis_store_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id     = optional(string)
    diagnosis_store_id = optional(string)
    display_name       = optional(string)
    state              = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

