

 

for _, stash in ipairs(Config.Stashes) do
  exports['qb-target']:AddCircleZone("StashLoc-" .. _, vector3(stash.location.x, stash.location.y, stash.location.z), 0.5, { -- The name has to be unique, the coords a vector3 as shown and the 1.5 is the radius which has to be a float value
  debugPoly = Config.Debug, -- This is for enabling/disabling the drawing of the box, it accepts only a boolean value (true or false), when true it will draw the polyzone in green
}, {
  options = { -- This is your options table, in this table all the options will be specified for the target to accept
    { -- This is the first table with options, you can make as many options inside the options table as you want
      num = 1, -- This is the position number of your option in the list of options in the qb-target context menu (OPTIONAL)
      icon = Config.Target.Icon, -- This is the icon that will display next to this trigger option
      label = Config.Target.Label, -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
      action = function() -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
          exports.ox_inventory:openInventory("stash", stash.id)
      end,
 }
  },
  distance = 2, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})

end

