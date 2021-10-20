variable sample {
  default = ["hello", 100, true, "world"]
}

variable sample3 {
  default = 123
}

variable sample4 {
  default = {
     course_name = "DevOps",
     Timings     = "6AM"
     is_active   = true
  }
}

variable A {
  default = "A"
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

output A {
  value = var.A
}