-- Script Programado por ScriptThat Community | https://discord.gg/JtcTffs

-- Llamar a la configuración
local configEnv = {} -- Para separarlo de la configuración global
local f,err = loadfile("./config.lua", "t", configEnv)

-- Registrar Comando
RegisterCommand('redes', function()
    msg("Twitter: " + configEnv.twitter)
    msg("Instagram: "+ configEnv.instagram)
    msg("Discord: " + configEnv.discord)
    msg(configEnv.other1name + " " + configEnv.other1link)
end, false)

-- Declarar la función 'msg'
function msg(text)
    -- TriggerEvent enviará los mensajes al cliente con el nombre en rojo
    TriggerEvent("chatMessage",  configEnv.svname, {255,0,0}, text)
end