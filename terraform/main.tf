resource "aws_instance" "instance" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  subnet_id                   = data.aws_subnet.selected.id

  tags = merge(
    {
      Name = var.instance_name
    },
    var.tags
  )
}