---@diagnostic disable: undefined-global, lowercase-global
CreateThread(function()
    local startTime = GetGameTimer()
    while true do
        local pid = PlayerId()
        SendNUIMessage({
            type = "update",
            online = #GetActivePlayers(),
            id = GetPlayerServerId(pid),
            sessionTime = true,
            startTime = startTime
        })
        Wait(2000)
    end
end)