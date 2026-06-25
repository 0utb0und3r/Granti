function love.load()
    -- Load assets, initialize variables, etc.
    player = {
        x = 100,
        y = 100,
        speed = 200,
        vy = 0 ,-- vertical velocity
        width = 50,
        height = 50
    }

    gravity = 500 -- Gravity strength
    floor = love.graphics.getHeight() - 40 -- Floor position
    ceiling = 40 -- Ceiling position
end

function love.update(dt)
    -- Update game state, handle input, etc.
    -- remove vertical navigation
    -- if love.keyboard.isDown("up") then
    --     player.y = player.y - player.speed * dt
    -- end
    -- if love.keyboard.isDown("down") then
    --     player.y = player.y + player.speed * dt
    -- end

    -- Apply gravity
    player.vy = player.vy + gravity * dt
    player.y = player.y + player.vy * dt

    -- Horizontal movement
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed * dt
    end

end

function love.draw()
    -- Draw game objects, UI elements, etc.

    -- Drawing the floor and ceiling
    love.graphics.setColor(0.3, 0.3, 0.3) -- Set color to gray
    love.graphics.rectangle("fill", 0, floor, love.graphics.getWidth(), 40) -- Floor
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), ceiling) -- Ceiling

    -- Drawing player
    love.graphics.setColor(1, 0, 0) -- Set color to red
    love.graphics.rectangle("fill", player.x, player.y, 50, 50)

end
