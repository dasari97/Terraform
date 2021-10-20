variable sample {
  default = "Hello"
}

output sample1 {
  value = var.sample
}

output sample2 {
  value = "${var.sample} everyone, welcome to the session"
}