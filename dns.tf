provider "dnsimple" {
  token = "abcd1234"
  account = "dptraining"
}

resource "dnsimple_record" "example"{
  domain = "abcd12#4"
  type = "A"
  name = "testing"
#  value = "${aws_instance.web.0.public_ip}"

  #alternative
  value = "{element(aws_instance.web.*.public_ip, count.index)}"

}
