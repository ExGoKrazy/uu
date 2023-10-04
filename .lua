getgenv().Silent = {
    Mode = "Target", -- Target, Regular
    ModeType = "BoxFOV", -- Legit, Unlegit, BoxFOV() (LEGIT IS RECOMMENDED ACTS AS AN ANTICURVE) (Use unlegit if you don't want to hit realistic prediction points) 
    HitMode = "ClosestBodypart", -- ClosestPoint / ClosestBodypart (ClosestPoint is more legit)
    Prediction = 0.129331234, -- Depending on your ping you might have to set this to a different value, the higher the ping, the higher the prediction. (0.119 is recommended for 60-70 ping)
    AutoPrediction = false, -- If true, prediction will be automatically set based on your ping using PredefinedPredictions
    RegularModeVisualizer = false,
    
}

getgenv().Camlock = {
    Enabled = true,
    SafetyMeasures = true, -- If true, camlock will not work if you are in thirdperson without shiftlock
    Prediction = 0.125, -- How much the camera will predict the target's movement
    Stickiness = 1.5, -- How much the camera will stick to the target
    UseTarget = true, -- If true, camlock will be synced with whoever you are targeting and will immediately follow them (recommnded for target silent)
    Parts = {"Head", "UpperTorso", "LowerTorso"}, 
    Activation = { -- Activation method is convenient if you're using Regular Silent
        Mode = "Keybind", -- Mouse, Keybind 
        Type = "Toggle", -- Hold, Toggle
        Keybind = "X",
        MouseButton = "RightButton", -- You have to right click to use camlock
    },
    FOV = 50, -- How big the FOV is
    Smoothness = 0.018, -- How smooth the camera will move
    AirShot = true,
    AirShotSmooth = 0.012, -- How smooth the camera will move when you are in the air    
    ShakeValue = { -- Reference: https://t4.ftcdn.net/jpg/05/12/86/27/360_F_512862789_abYbb2RPLzpN8aAjteTBb4xGnRgqVSyw.jpg
        X = 0.7, -- How much the camera will shake on the X axis
        Y = 0.7, -- How much the camera will shake on the Y axis
        Z = 0.7, -- How much the camera will shake on the Z axis
    }, -- How much the camera will shake
    EasingStyle = "Exponential",
    --[[
    Linear, Sine, Back, Quad, Quar, Quint, Bounce, Elastic, Exponential, Circular, Cubic

    More info: https://cdn.discordapp.com/attachments/1040757112109801493/1079468332715098122/EasingStyles.png
    ]]--
}

getgenv().SafetyMeasures = {
    NoFloorShots = true,
    AntiCurve = {
        Enabled = true,
        X = 60, -- If the player position is X pixels away from the X axis, it will not redirect the shots
        Y = 300, -- If the player position is Y pixels away from the Y axis, it will not redirect the shots
        PrintDistance = false, -- If true, it will print the distance between the player and the X and Y axis, this is useful for finding the perfect values for X and Y for you
    },
    OverrideYAxis = true, -- will override your y axis meaning VERY LEGIT!
}

getgenv().Prediction_Points = { -- Ensures that you ONLY hit realistic prediction points
    Power = 2, -- Lowest is 1 (most realistic and harder to hit)
}

getgenv().FOV = {
    Visible = true,
    Thickness = 0.5,
    NumSides = 35,
    Radius = 15,
    Filled = true,
    Transparency = 0.2,
    Color = Color3.fromRGB(255,255,255),

    BoxFOV = {
        Visible = true,
        Thickness = 2,
        Height = 2,
        Width = 2,
        Color = Color3.fromRGB(255,0,0),
    }
}

getgenv().Tracer = { -- Only works with target silent
    Visible = true,
    Thickness = 0.5,
    Color = Color3.fromRGB(255,255,255)   
}

getgenv().Ranges = {
    LongDistance = 65,
    MediumDistance = 35,
    ShortDistance = 15,
}

getgenv().Macro = {
    Enabled = true,
    Mode = "Hold", -- Hold, Toggle
    Type = "ThirdPerson", -- FirstPerson, ThirdPerson,
    BypassMacroPatch = true,
    
    NoClipMacro = true,
    Delay = 0.01
}

getgenv().Guns = {
    FOVS = {
    -- {ShortDistanceFOV, MediumDistanceFOV, LongDistanceFOV}
        Revolver = {13.5,13.5,10},
        DoubleBarrel = {13.5,13.5,10},
        Shotgun =  {13.5,13.5,10},
        TacticalShotgun = {13.5,13.5,10},
        SMG = {5.5,5.5,4},
        Silencer = {5,3,3},
        AssaultRifle = {2,2,1},
        Others = {2,2,1},
    },
}

getgenv().Hitchances = { -- Higher the number, higher the chance of hitting MAX IS 100
    Ground = {
        Revolver = 100,
        DoubleBarrel = 100,
        Shotgun = 100,
        TacticalShotgun = 100,
        SMG = 100,
        Silencer = 100,
        AssaultRifle = 100,
        Others = 100,
    },
    Air = {
        Revolver = 100,
        DoubleBarrel = 100,
        Shotgun = 100,
        TacticalShotgun = 100,
        SMG = 100,
        Silencer = 100,
        AssaultRifle = 100,
        Others = 100,
    },
}

getgenv().Misc = { 
    HideVisualsOnStart = false, -- Will hide visuals upon execution
    Raid_Awareness = true,
    
    RemoveSeats = false,
    AntiFling = true,
}

getgenv().Keybinds = {
    TargetSilent = "C",
    TargetUnlock = "Z",
    NormalSilToggle = "P",
    Anti_Lock = "V",
    Triggerbot = "B",
    Raid_Awareness = "T",
    HideVisuals = "L",
    Macro = "M",
    NoClipMacro = "N",
    OverrideYAxisToggle = "K",
}

getgenv().Anti_Lock = {
    Enabled = false,
    Type = "NormalDS", -- NormalDS, PredictionDisabler
    Mode = "Toggle"
}

getgenv().Triggerbot = { --Only works with target silent for safety reasons
    Enabled = true,
    FOV = {
        Visible = true,
        Thickness = 0.5,
        NumSides = 35,
        Radius = 2.5,
        Filled = false,
        Transparency = 0.2,
        Color = Color3.fromRGB(0,0,0)
    },
    Parts = {"Head", "UpperTorso", "LowerTorso"},
    MinDelay = 0.06,
    MaxDelay = 0.1,
    ModeType = "Legit",
    BoxSync = true,
    Mode = "Hold"
}

getgenv().MemSpoofer = { 
    Enabled = true,
    MinMemory = 940,
    MaxMemory = 942,
    MaxDelay = 1.5,
    MinDelay = 1
}

getgenv().PredefinedPredictions = { --THIS WILL ONLY WORK IF YOU HAVE AUTOPREDICTION ON
    Ping30_40 = 0.11,
    Ping40_50 = 0.119,
    Ping50_60 = 0.123,
    Ping60_70 = 0.125,
    Ping70_80 = 0.129,
    Ping80_90 = 0.129591,
    Ping90_100 = 0.130,
    Ping100_110 = 0.131,
    Ping110_120 = 0.134,
    Ping120_130 = 0.141,
    Ping130_140 = 0.150,
}

getgenv().Chat = {
    -- Changes setting on chat
    Enabled = false,
    Settings = {
        Prediction = "/e pred", -- number example: /e pred 0.125
        AutoPrediction = "/e autopred", -- true or false example: /e autopred true
        Antilock = "/e antilock", -- true or false example: /e antilock true
        AntiLockMode = "/e antilockmode", -- NormalDS or PredictionDisabler example: /e antilockmode NormalDS
      },
}