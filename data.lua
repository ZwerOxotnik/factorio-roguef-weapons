require("prototypes.sound")
require("prototypes.weapons")


for i = 1, 100 do
	data:extend({{type = "ammo-category", name = "ammo-" .. i}})
end
