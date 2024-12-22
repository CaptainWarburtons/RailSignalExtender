local railExtenderTool = table.deepcopy(data.raw["item"]["rail-signal"])

railExtenderTool.name       = "rail-extender-tool"
railExtenderTool.stackable  = false
railExtenderTool.subgroup   = "tool"
railExtenderTool.stack_size = 1
railExtenderTool.show_in_library       = true
railExtenderTool.flags                 = {"only-in-cursor", "spawnable", "not-stackable"}

local recipe = {
    name                     = "give-rail-extender-tool",
    type                     = "shortcut",
    order                    = "b[blueprints]-s[rail-extender-tool]",
    action                   = "spawn-item",
    localised_name           = "Give Rail Extender",
    item_to_spawn            = "rail-extender-tool",
    icon                     = "__RailSignalExtender__/graphics/icons/rail-signal-shortcut.png",
    icon_size                = 32,
    small_icon               = "__RailSignalExtender__/graphics/icons/rail-signal-shortcut.png",
    small_icon_size          = 32,
    associated_control_input = "give-rail-extender-tool",
}

local extenderToolKeyShortcut = {
    name          = "give-rail-extender-tool",
    type          = "custom-input",
    key_sequence  = "ALT + P",
    action        = "spawn-item",
    item_to_spawn = "rail-extender-tool",
    consuming     = "game-only",
    order         = "b"
}

data:extend({railExtenderTool, recipe, extenderToolKeyShortcut})