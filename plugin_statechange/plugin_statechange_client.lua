--
--						Copyright (c) 2023 Manifest Networks
--
DecorRegister('IsUnconscious', 2)

local pluginData = {
    name = "plugin_statechange",
    description = "Plugin that maintains certian state changes",
    author = "123B3n",
    version = "1.0"
}

RegisterClientPlugin(pluginData, function(print)
    HookEventHandler(ENUM_HOOKABLE_EVENTS.UNCONSCIOUS_STATE_CHANGED, function(state)
        DecorSetBool(PlayerPedId(), 'IsUnconscious', state)
    end)
end)