require("states")

function love.load()
	state = states.mainmenu.make()
end

function love.update(dt)
	if state.update then
		state:update(dt)
	end
end

function love.draw()
	if state.draw then
		state:draw()
	end
end

function love.keypressed(k)
	if state.keypressed then
		state:keypressed(k)
	end
end
