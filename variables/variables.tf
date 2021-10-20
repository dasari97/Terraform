variable sample {
  default = "Hello"
}

variable sample3 {
  default = 123
}

variable sample4 {
  default = true
}

variable A {
}

output sample1 {
  value = var.sample
}

output sample2 {
  value = "${var.sample} everyone, welcome to the session"
}

output sample5 {
  value = var.sample4
}