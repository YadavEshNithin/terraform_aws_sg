resource "aws_security_group" "frontend_allow_sg" {
  name        = var.frontend_allow_sg_name
  description = var.sg_desc
  vpc_id      = var.vpc_id

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
      Name = "${var.project}.${var.environment}"
    }
  )
}
