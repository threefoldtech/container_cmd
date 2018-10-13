
# Package

version       = "0.1.0"
author        = "Ahmed T. Youssef"
description   = "spawn and manage zero-os containers locally or on the grid easily"
license       = "Apache-2.0"
srcDir        = "src"
bin           = @["zos"]


# Dependencies

requires "nim >= 0.19", "docopt#head", "redisclient", "uuids"

task build, "Creating zos binary":
    exec "nimble build -d:ssl"

task static, "Creating zos static binary":
    exec "nimble build -d:ssl --app:console"



