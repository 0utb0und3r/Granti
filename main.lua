function love.load()
    -- Load assets, initialize variables, etc.
    player = {
        x = 100,
        y = 100,
        speed = 200
    }
end

function love.update(dt)
    -- Update game state, handle input, etc.
    if love.keyboard.isDown("up") then
        player.y = player.y - player.speed * dt
    end
    if love.keyboard.isDown("down") then
        player.y = player.y + player.speed * dt
    end
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed * dt
    end
end

function love.draw()
    -- Draw game objects, UI elements, etc.
    love.graphics.setColor(1, 0, 0) -- Set color to red
    love.graphics.rectangle("fill", player.x, player.y, 50, 50)
end
