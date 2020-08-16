-- Script Programado por ScriptThat Community | https://discord.gg/JtcTffs

-- Registrar Comando
RegisterCommand('redes', function()
    msg("")
    if Config.twitter then
        msg("Twitter: " + Config.lnktwitter)
    end
    if Config.discord then
        msg("Discord: " + Config.lnkdiscord)
    end
    if Config.instagram then
        msg("Instagram: " + Config.lnkinstagram)
    end
    if Config.teamspeak then
        msg("Teamspeak: " + Config.lnkteamspeak)
    end
    if Config.web then
        msg("Web: " + Config.lnkweb)
    end
    msg("Prueba")
end, false)

-- Declarar la función 'msg'
function msg(text)
    -- TriggerEvent enviará los mensajes al cliente con el nombre en rojo
    TriggerEvent("chatMessage",  Config.name, {255,0,0}, text)
end