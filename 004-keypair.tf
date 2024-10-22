resource "aws_key_pair" "myProjKP" {
  key_name   = "myProj-KP"
  public_key = file("myProjectKP.pub")
}
