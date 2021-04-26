print("^0======================================================================^7")
print("^0[^4Author^0] ^7:^0 ^0Natero V^7")
print("^0[^5Discord^0] ^5N A T E R O#7023^5")
print("^0[^6GITHUB^0] ^6https://github.com/NateroV^5")
print("^0[^3Version^0] ^7:^0 ^01.0.0^7")
print("^0[^1WARNING^0] ^1DO NOT REUPLOAD WITHOUT MY PERMISSION^1")
print("^0======================================================================^7")

-- Fonction pour la notification en bas de l'écran // Notification function

function notify(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)
    DrawNotification(true, false)
end

-- Premier filtre // first filter

RegisterCommand('gnv1',function(source,args)
    notify("Pack Graphique : ~g~ON~g~")
    Citizen.Wait(200)
    PlaySoundFrontend(-1, "OK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    if not active then
    active = true
--    SetTimecycleModifier('yell_tunnel_nodirect')
    SetTimecycleModifier('tunnel_id1_11')
    SetExtraTimecycleModifier('reflection_correct_ambient')
    print('^2Pack Graphique: Activé^0')
    else
    active = false
    notify("Pack Graphique : ~r~OFF~r~")
    ClearTimecycleModifier()
    ClearExtraTimecycleModifier()
--    ResetExtraTimecycleModifierStrength()
    print('^1Pack Graphique: Désactivé^0')
    end
end)

-- Deuxième filtre // second filter

RegisterCommand('gnv2',function(source,args)
    notify("Pack Graphique : ~g~ON~g~")
    Citizen.Wait(200)
    PlaySoundFrontend(-1, "OK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    if not active then
    active = true
--    SetTimecycleModifier('yell_tunnel_nodirect')
    SetTimecycleModifier('tunnel')
    SetExtraTimecycleModifier('reflection_correct_ambient')
    print('^2Pack Graphique: Activé^0')
    else
    active = false
    notify("Pack Graphique : ~r~OFF~r~")
    ClearTimecycleModifier()
    ClearExtraTimecycleModifier()
--    ResetExtraTimecycleModifierStrength()
    print('^1Pack Graphique: Désactivé^0')
    end
end)

-- Troisième Filtre // third filter

RegisterCommand('gnv3',function(source,args)
    notify("Pack Graphique : ~g~ON~g~")
    Citizen.Wait(200)
    PlaySoundFrontend(-1, "OK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    if not active then
    active = true
--    SetTimecycleModifier('yell_tunnel_nodirect')
    SetTimecycleModifier('CS1_railwayB_tunnel')
    SetExtraTimecycleModifier('reflection_correct_ambient')
    print('^2Pack Graphique: Activé^0')
    else
    active = false
    notify("Pack Graphique : ~r~OFF~r~")
    ClearTimecycleModifier()
    ClearExtraTimecycleModifier()
--    ResetExtraTimecycleModifierStrength()
    print('^1Pack Graphique: Désactivé^0')
    end
end)

-- Optimisation personnage / Character Optimization

RegisterCommand('gnvo',function(source,args)
    notify("~o~Optimisation de votre personnage...~o~")
    if not active then
    active = true
    print('^2Optimisation en cours...^0')
    DoScreenFadeIn(2000)
    DoScreenFadeOut(2000)
    Citizen.Wait(2000)
    DoScreenFadeIn(1500)
    ClearAllBrokenGlass()
    ClearAllHelpMessages()
    LeaderboardsReadClearAll()
    ClearBrief()
    ClearGpsFlags()
    ClearPrints()
    ClearSmallPrints()
    ClearReplayStats()
    LeaderboardsClearCacheData()
    ClearFocus()
    ClearHdArea()
    ClearHelp()
    ClearNotificationsPos()
    ClearPedInPauseMenu()
    ClearFloatingHelp()
    ClearGpsPlayerWaypoint()
    ClearGpsRaceTrack()
    ClearReminderMessage()
    ClearThisPrint()
    active = false
    notify("~g~Fin de l'optimisation~g~")
    print('^1Fin de l\'optimisation^0')

    -- Bruitage prise en compte du filtre / Sound when gnvo is finished
    
    Citizen.Wait(2090)
    PlaySoundFrontend(-1, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", true)

    end
end)


