**Requirements**

 - [VISN_ARE](https://store.veryinsanee.space/package/5215195) (Avanced Medical System)
 - Common Sense

**Concept**
The concept of this plugin is for developers that use the VISN_ARE framework to be able to check whether or not a player is in the "Dead" state or not. This can of course be useful, for example to disable certain controls when the player is in this state, and so on. This is nothing advanced at all, but rather a simple little plugin.

**Install**
Download the latest release here from github, drag the folder inside **visn_are\plugins**, and example of how it should look like in the plugins folder would be **visn_are\plugins\plugin_statechange**

If you would like to check from this point forward whether or not the player is dead or not, you can do so by using the follow example codes below...

```lua
--[[
	This will return true if the player is dead.
	The useful thing with this is that you can use this to check
	if another player is dead as well without triggers and other
	stupied callbacks.
]]
DecorGetBool(PlayerPedId(), 'IsUnconscious')

--An example of a thread that disables all inputs (Not optimized)
Citizen.CreateThread(function()
	while (true) do
		Citizen.Wait(1) 

		if (DecorGetBool(PlayerPedId(), 'IsUnconscious')) then
			DisableAllControlActions(0)
		end
	end
end)
```
