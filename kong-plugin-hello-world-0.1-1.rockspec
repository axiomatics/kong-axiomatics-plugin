package = "kong-plugin-hello-world"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/brndmg/kong-plugin-hello-world",
  tag = "v0.1-1"
}
description = {
  summary = "The Hello World Plugin",
  license = "Apache 2.0",
  homepage = "https://github.com/brndmg/kong-plugin-hello-world",
  detailed = [[
      An example Hello World plugin. Bootstrap your plugin development.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.hello-world.access"] = "kong/plugins/kong-plugin-hello-world/access.lua",
    ["kong.plugins.hello-world.handler"] = "kong/plugins/kong-plugin-hello-world/handler.lua",
    ["kong.plugins.hello-world.schema"] = "kong/plugins/kong-plugin-hello-world/schema.lua"
  }
}
