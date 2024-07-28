local isUIOpen = false

function openTestUI()
    SetNuiFocus(true, true)
    SendNUIMessage({action = 'openUI'})
    SendMessageToUI()
    isUIOpen = true
end

function closeTestUI()
    SetNuiFocus(false, false)
    SendNUIMessage({action = 'closeUI'})
    isUIOpen = false
end

function SendMessageToUI()
    message = 'UnKnown John UI Template'
    SendNUIMessage({
        action = 'showMessage',
        message = message
    })
end

RegisterCommand("opentestui", function()
    TriggerEvent('ud-uitemplate:opentestui')
end)

RegisterNetEvent('ud-uitemplate:opentestui', function()
    if not isUIOpen then
        openTestUI()
    else
        closeTestUI()
    end
end, false)

RegisterNUICallback('exit', function(data, cb)
    closeTestUI()
    cb('ok')
end)