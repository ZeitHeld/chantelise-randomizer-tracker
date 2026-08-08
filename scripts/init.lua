local item_list = {"dungeons", "stages", "events", "equipment", "fermin", "junk"}
local map_list = {"world"}
local loc_list = {"story_events", "hidden_treasures"}
local layout_list = {"items_only", "items_map", "broadcast", "maps", "tracker"}
local layout_core_list = {"broadcast", "item_grids"}

local variant = Tracker.ActiveVariantUID
print(variant)

Tracker:AddItems("items/bt-items.json")
Tracker:AddLayouts("layouts/bt-items.json")
Tracker:AddLayouts("layouts/bt-ce-tracker.json")

-- ITEMS
for i, item in ipairs(item_list) do
    Tracker:AddItems("items/"..item..".json")
end

-- MAPS
for i, map in ipairs(map_list) do
    Tracker:AddMaps("maps/"..map..".json")
end

-- LOCATIONS
for i, location in ipairs(loc_list) do
    Tracker:AddLocations("locations/"..location..".json")
end

-- LAYOUTS
for i, layout in ipairs(layout_core_list) do
    Tracker:AddLayouts("layouts/"..layout..".json")
end

-- if variant == "items_only" then
    Tracker:AddLayouts("layouts/"..variant..".json")
-- else
    -- for i, layout in ipairs(layout_slim_list) do
    --     Tracker:AddLayouts("layouts/"..layout..".json")
    -- end
-- end
if variant ~= "items_only" then
    Tracker:AddLayouts("layouts/maps.json")
end

if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end