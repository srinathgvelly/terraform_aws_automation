provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "bastion" {
  ami                         = "ami-022e8cc8f0d3c52fd"
  instance_type               = "t2.micro"
  security_groups             = ["${aws_security_group.sg-bastion.name}"]
  key_name                    = aws_key_pair.bastion_key.key_name  
  associate_public_ip_address = true
  tags = {
      Name = "bastion_host_server" 
  }
}

resource "aws_key_pair" "bastion_key" {
  key_name   = "bastionkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDKu6xU23SuTcr9jjLei/hOgwwxBwhfZFhV8eT3eenD/lNm+zxk5ypt7357lTiWHf6Ubp6GsGXKt/uG0LObIg7Gcl8DytX6Ie2dnOh66wrFExopD2L88KJ7jXd5b1mJfqD3h59NT8Ys6aHcsgzMejaT/5eoJ65tuoikUFY0HPkkcor2hfYmf9URwgUKHHjaFJQkAGyyIfkUHczRmP8zj3r+DLwBm9wwv8G61aa+1tJXWeHdMo/xDfE4B2HHDrv98OxDEnEh//RhtajCvohHB4OO4YFSzLH0TnPw1YF9BQl5EprGNTca97xOIQzHC07q6RNTaQG/fsQj7xyNqQemZc3GHTylZ9dmOWD3GSgbmam1kypks//bqC3Z4OFMGURco687k9d29I9KMTe/2kAmKmWfzQwlgKsERmXP7khWRygirQAnTQh2p1X2A35vTH5Fcp+TJy5n1ppCVyXEJ5lxyztsIlkaOVygVNhoaWVexEoa1KcLvlfpYw/ieCZQZOZ3bneUZuqbDhmuqUFT3QPz80Pwg/lfYzau3UOobLDOFYF7SoVkcO/j2GoE23RQojNJyig2wgmGbQnui+9T5nK9pCbY0+XAQ6YTzsucwxZIWVQkCjJ7fvDg+aygJYUr5BwfhpFtE6sCZ5NB7qB1ZUDXxXgYKtUwrY8vpuOX6XpgKJB37w== srinathgvelly@gmail.com"
}