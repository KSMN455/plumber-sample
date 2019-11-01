library(plumber)

api <- plumber::plumb("sample.R")

api$run(host = "0.0.0.0", port=8000)
