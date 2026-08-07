local item_list = {"dungeons", "events"}
local map_list = {"world"}
local loc_list = {"story_events"}
local layout_list = {"items_only", "items_map", "broadcast", "maps", "tracker"}
local layout_slim_list = {"items_map", "broadcast", "maps", "tracker"}

local variant = Tracker.ActiveVariantUID

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
-- for i, layout in ipairs(layout_list) do
--     Tracker:AddLayouts("layouts/"..layout..".json")
-- end

if variant == "items_only" then
    Tracker:AddLayouts("layouts/"..variant..".json")
else
    for i, layout in ipairs(layout_slim_list) do
        Tracker:AddLayouts("layouts/"..layout..".json")
    end
end