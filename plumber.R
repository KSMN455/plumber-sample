library(plumber)

api <- plumber::plumb("hello_world.R")

api$run(host = "0.0.0.0", port=8000)
