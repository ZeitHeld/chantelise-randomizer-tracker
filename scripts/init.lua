local variant = Tracker.ActiveVariantUID
print("SELECTED VARIANT: "..variant)



Tracker:AddItems("items/dungeons.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/events.json")
Tracker:AddItems("items/fermin.json")
Tracker:AddItems("items/junk.json")
Tracker:AddItems("items/stages.json")



if variant == "map" then
    Tracker:AddMaps("maps/world.json")

    Tracker:AddLocations("locations/dungeons.json")
    Tracker:AddLocations("locations/story_events.json")
    Tracker:AddLocations("locations/hidden_treasures.json")
    
elseif variant == "items_only" then
    --
end
Tracker:AddLayouts("layouts/variants/"..variant..".json")


if PopVersion and PopVersion >= "0.18.0" then
    print("Poptracker Autotracking - INCLUDED")
    ScriptHost:LoadScript("scripts/autotracking.lua")
end