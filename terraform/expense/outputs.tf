# syntax:-

# output "<output_name>" {
#   value       = <expression>
#   description = "<description>"   # (Optional) Provides details about the output
#   sensitive   = true/false        # (Optional) If true, hides the output in logs
# }


output "instances_info" {
    value = aws_instance.expense
}