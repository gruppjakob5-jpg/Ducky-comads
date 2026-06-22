--[[
    PROJECT: MelounXecutor - gui
    AUTHOR: Team mx
]]

if not game:IsLoaded() then game.Loaded:Wait() end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "MelounXecutor - gui",
    LoadingTitle = "Loadind...",
    LoadingSubtitle = "by Team MX",
    ConfigurationSaving = { Enabled = false },
    KeySystem = false,
})

-- TABS ERSTELLEN
local Main = Window:CreateTab("Main", 4483362458)
local Chaos = Window:CreateTab("Chaos", 4483362458)
local Admin = Window:CreateTab("Admin", 4483362458)
local Hacker = Window:CreateTab("Hacker", 4483362458)
local ScriptTab = Window:CreateTab("Scripts", 4483362458)

-- NEUE SCRIPT LISTE
local newScripts = {
    {"Omni God (Sounds Added)", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Omni%20God"))()'},
    {"Sutart", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Sutart"))()'},
    {"Caducus", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/CADUCUS%20(FIXED)"))()'},
    {"Big Daddy", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Big%20Daddy"))()'},
    {"Star Glitcher", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Spectrum%20Glitcher"))()'},
    {"GUN", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/M41451"))()'},
    {"SUS", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/secks"))()'},
    {"Majora's Mask", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Mas"))()'},
    {"Rainbow King", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Rainbow%20Banisher"))()'},
    {"DISTORTED", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/The%20Distorted"))()'},
    {"Shedletsky", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Shedletsky%20Rage"))()'},
    {"Assassin (broken)", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/assassin"))()'},
    {"The Assasian", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/The%20Assasian"))()'},
    {"Chrono Sentinel", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Lock1213/Scripts/refs/heads/main/Chrono%20Sentinel%20(Converted%20With%20Music)"))()'},
    {"Incension", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Incension%20Reborn"))()'},
    {"SUS 2", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/neko"))()'},
    {"SCP-106", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/SCP-106"))()'},
    {"ANDRFIX", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/ANDRFIX"))()'},
    {"Ender", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Ender"))()'},
    {"RUIN EX", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/RUIN%20EX"))()'},
    {"RUIN IX", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/RUIN%20IX"))()'},
    {"Studio Dummy", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Studio%20Dummy"))()'},
    {"The Boys", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Boys"))()'},
    {"Void Boss", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/come%20back"))()'},
    {"Pandora", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/pandora"))()'},
    {"Noob Switcher V5 (Recreated)", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Noob%20Switcher%20V5"))()'},
    {"Primadon (Monky)", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Primadon"))()'},
    {"Steve", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Steve"))()'},
    {"Devoyance", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Devoyance"))()'},
    {"Mystic Annihilation", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Mystic"))()'},
    {"Burning Hope", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Burning%20Hope"))()'},
    {"Calmed Murderer", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Calmed"))()'},
    {"Kenshiro", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Kenshiro"))()'},
    {"The Angel", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/The%20Angel"))()'},
    {"Carnage", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Carnage"))()'},
    {"Chips", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Chips"))()'},
    {"Black Dominus Guy", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Dominus"))()'},
    {"Very Retro!!!", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/DoomspireBrickbattler"))()'},
    {"God Slayer", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/God%20Eater"))()'},
    {"Hacker X", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Hacker%20X"))()'},
    {"Jojo Gauntlets", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Jojo%20Super%20Gauntlets"))()'},
    {"Pharoh", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Pharoh"))()'},
    {"Sans", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Sans"))()'},
    {"Sans V2", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Last%20Breath%20Sans"))()'},
    {"Verlex", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Verlex"))()'},
    {"The Sun Is A Deadly Laser V2", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Sun"))()'},
    {"Patrick", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Patrick"))()'},
    {"Split Head", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Split"))()'},
    {"Determination", 'loadstring(game:HttpGet("https://pastebin.com/raw/SMrFaqxL"))()'},
    {"Noob Switcher V5 (ORIGINAL)", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/noob%20v5"))()'},
    {"All Seeing Hand", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/hand"))()'},
    {"Omega Flowey", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Flowey"))()'},
    {"GrabGun", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/grab"))()'},
    {"Voodoo Child V2", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/voodoo"))()'},
    {"Void Guardian", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/void"))()'},
    {"Necronomicon Book", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/book"))()'},
    {"True Insanity", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Insanity"))()'},
    {"Shrike", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Shrike"))()'},
    {"KillBot V2", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/KillbotV2"))()'},
    {"The Mask", 'loadstring(game:HttpGet("https://pastebin.com/raw/E5eZyJTe"))()'},
    {"SCP-096 NPC", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/SCP"))()'},
    {"Nectula", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Nectula"))()'},
    {"Fridge", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Fridge"))()'},
    {"Oculus", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Oculus"))()'},
    {"Guts", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/GUTS"))()'},
    {"Zombie (NPC)", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/BRAINZ"))()'},
    {"Zombie (PLAYER)", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/BRAINS"))()'},
    {"Polygoner", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Polygoner"))()'},
    {"Xester V2", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/XESTER%20V2"))()'},
    {"Blind Reaper", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/BLINDREAPER"))()'},
    {"Black Figure", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Figure"))()'},
    {"Comedic Chaos", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Comedy"))()'},
    {"Among Us", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/AMOGUS"))()'},
    {"GigaChad", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/GigaChad"))()'},
    {"Spectrum Glitcher V7", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/sr"))()'},
    {"Hallow Slayer", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/HSlayer"))()'},
    {"Light Circlet", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/light"))()'},
    {"Lunatic", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/lunatic"))()'}
}

for _, s in pairs(newScripts) do
    ScriptTab:CreateButton({Name = s[1], Callback = function() loadstring(s[2])() end})
end

-- ORIGINAL SCRIPTS
local scripts = {
    ["CADUCUS"] = "https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/CADUCUS%20(FIXED)",
    ["Xester Monster"] = "https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt",
    ["Sutart"] = "https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Sutart",
    ["Come Back"] = "https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/come%20back",
    ["PATCHMA HUB"] = "https://rawscripts.net/raw/Universal-Script-PATCHMA-HUB-v45-universal-hats-plus-aligned-hats-by-MyWorld-30918",
    ["Attack"] = "https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac",
    ["Sin Dragon"] = "https://raw.githubusercontent.com/gitezgitgit/Sin-Dragon/refs/heads/main/Sin%20Dragon.lua.txt",
    ["The Sun"] = "https://raw.githubusercontent.com/gObl00x/Pendulum-Fixed-AND-Others-Scripts/refs/heads/main/The%20Sun%20Is%20A%20Deadly%20Laser",
    ["Mr. Bye Bye"] = "https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Bye%20Bye.lua",
    ["Gaster Hands"] = "https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/GasterHands.txt",
    ["Revenge Hands"] = "https://raw.githubusercontent.com/nicolasbarbosa323/sin-dragon/refs/heads/main/reevenge%20hands.txt",
    ["Server Admin"] = "https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Server%20Admin.lua",
    ["Ban Hammer"] = "https://raw.githubusercontent.com/nicolasbarbosa323/ban-hammer/refs/heads/main/ban",
    ["John Doe"] = "https://rawscripts.net/raw/Client-Replication-Join-doe-script-uploaded-by-gojohdkaisenkt-me-34101",
    ["Grab V4"] = "https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Grab%20V4.txt",
    ["Assignment"] = "https://raw.githubusercontent.com/TEST19983/Assigment/refs/heads/main/Assignment",
    ["Infiltration X"] = "https://pastebin.com/raw/JwUdxg8y",
    ["Project 44033514"] = "https://raw.githubusercontent.com/gitezgitgit/Project-2044033514/refs/heads/main/Project%2044033514.lua.txt"
}

for name, url in pairs(scripts) do
    local targetTab = Main
    if name == "Sin Dragon" or name == "Attack" or name == "The Sun" or name == "Mr. Bye Bye" or name == "Gaster Hands" or name == "Revenge Hands" then 
        targetTab = Chaos
    elseif name == "Server Admin" or name == "Ban Hammer" or name == "John Doe" or name == "Grab V4" or name == "Assignment" then 
        targetTab = Admin
    elseif name == "Infiltration X" or name == "Project 44033514" then 
        targetTab = Hacker 
    end
    targetTab:CreateButton({Name = name, Callback = function() loadstring(game:HttpGet(url))() end})
end

Hacker:CreateSection("Server Tools")
Hacker:CreateButton({
    Name = "DESTROY SERVER (Loadstring)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gruppjakob5-jpg/Server-Controller-/b635b8c273bcee61454a84a75a1749976acff5c6/Destroy.server.lua"))()
    end
})

Hacker:CreateButton({
    Name = "FORCE OWNERSHIP",
    Callback = function()
        local p = game.Players.LocalPlayer
        p.MaximumSimulationRadius = math.huge
        sethiddenproperty(p, "SimulationRadius", math.huge)
    end
})
