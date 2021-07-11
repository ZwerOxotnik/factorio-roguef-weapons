local function sound(name, volume)
	return {
		type = "explosion",
		name = name .. "-sound",
		flags = {"not-on-map"},
		animations = {
			{
				filename = "__roguef-core__/graphics/empty.png",
				priority = "extra-high",
				width = 1,
				height = 1,
				frame_count = 1,
				animation_speed = 1
			}
		},
		created_effect = {
			type = "direct",
			action_delivery = {
				type = "instant",
				source_effects = {
					type = "play-sound",
					sound = {{filename = "__roguef-weapons__/sound/" .. name .. ".ogg", volume = volume or 0.5}}
				}
			}
		}
	}
end

data:extend({
	sound("shot-5", 0.5), sound("get")
})
