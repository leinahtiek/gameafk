-- [[ Daley Hub v20.0 ]] --
-- Credits: by Daley

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local LP = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- Rayfield Library Boot
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Daley Hub v20.0",
    LoadingTitle = "Daley Hub Loaded Successfully",
    LoadingSubtitle = "by Daley",
    Theme = "Default",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = { Enabled = false },
    KeySystem = false,
})

-- ==========================================
-- [[ STATE STORAGE ]] --
-- ==========================================
local States = {
    -- Automation & Combat Actions
    AutoClaimRewards   = false,
    AutoClaimLevel     = false,
    AutoClaimBP        = false,
    AutoTask           = false,
    TaskID             = 2003001,
    TaskID2            = 1000001,
    AutoEnterBattle    = false,
    AutoAbandon        = false,
    AutoAbandonEnd     = false,
    AutoCatch          = false,
    CatchPetID         = 9115276855,
    LogPetClicks       = false,
    
    -- Standalone Interact Spam
    AutoSpamE          = false,
    
    -- Quest Teleporter State
    SelectedQuestNPC   = nil,
    
    -- Skill Automation State
    AutoSkills1Enabled = false,
    Skill1DelayTime    = 0.1,
    AutoSkills2Enabled = false,
    Skill2DelayTime    = 0.1,
    AutoSkills3Enabled = false,
    Skill3DelayTime    = 0.1,
    AutoSkills4Enabled = false,
    Skill4DelayTime    = 0.1,
    
    -- Chest Farming State
    AutoChestFarm      = false,
    ChestFarmDelay     = 4,
    
    -- Locomotion
    SpeedEnabled       = false,
    SpeedValue         = 50,
    FlyEnabled         = false,
    FlySpeed           = 50,
    NoclipEnabled      = false,
    
    -- Pokemon Auto Fight Walking Loop
    AutoFightWalk      = false,
    W_Duration         = 2,
    A_Duration         = 2,
    S_Duration         = 2,
    D_Duration         = 2,
    
    -- Visuals / ESP
    PlayerESP          = false,
    ShowHighlights     = true,
    ShowUsernames      = true,
    ShowDistance       = true,
    
    -- Universal Scanner
    ScanKeyword        = "",
    ScannerESP         = false,
    
    -- Target Management
    SelectedPlayer     = nil,

    -- Dungeon Automation
    AutoCreateDungeon  = false,
    SelectedDungeonTier= "Normal Mode",
    DungeonDifficultyID = 1,
... (1,012 lines left)
