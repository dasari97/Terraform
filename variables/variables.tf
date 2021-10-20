variable sample {
  default = "Hello"
}

variable sample3 {
  default = 123
}

variable sample4 {
  A = true
}

output sample1 {
  value = var.sample3
}

output sample2 {
  value = "${var.sample} everyone, welcome to the session"
}

output sample1 {
  value = var.sample4
}