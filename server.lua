local ox_inventory = exports.ox_inventory



for _, stash in pairs(Config.Stashes) do
    if stash.jobs then
        ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.maxWeight, nil, stash.jobs)
    else
        ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.maxWeight, nil)
    end
end

