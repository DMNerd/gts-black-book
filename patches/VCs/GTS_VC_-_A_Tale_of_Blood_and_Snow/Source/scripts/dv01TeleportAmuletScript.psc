Scriptname dv01TeleportAmuletScript extends ActiveMagicEffect

ObjectReference Property teleportDestination Auto
Actor Property DLC1SeranaRef Auto
Sound Property TeleportSound Auto
Actor Property playerRef Auto
Faction Property WIFollowerCommentFaction Auto
ReferenceAlias Property currentFollower Auto
ImageSpaceModifier Property TeleportImod Auto
ReferenceAlias Property currentAnimal Auto
Message Property dvCannotFastTravel Auto

; Shared Gate to Sovngarde / Teleport Only in Tamriel integration.
FormList Property Survival_OblivionLocations Auto
FormList Property Survival_OblivionAreas Auto
FormList Property Survival_OblivionCells Auto
Quest Property DA16 Auto
Quest Property ForgottenCityQuest Auto

; Retained for parity with the existing Teleport Only in Tamriel scripts.
Bool wasInDreamstride = false
Bool wasInPlaneOfOblivion = false

Event OnEffectStart(Actor akTarget, Actor akCaster)
    Bool resetFastTravel = false
    WorldSpace playerWorldSpace
    Bool inDreamstride = false
    Bool inOblivion = false
    Actor animal
    Actor follower

    if akCaster == playerRef
        playerWorldSpace = playerRef.GetWorldSpace()
        inDreamstride = PlayerInDreamstride()
        inOblivion = CheckIsInPlaneOfOblivion(playerWorldSpace, false, inDreamstride)

        if inOblivion
            playerRef.InterruptCast()
            dvCannotFastTravel.Show()
            return
        endif

        ; Preserve ATOBAS's original behavior: temporarily enable the fast-travel
        ; control so the faction recall powers still work when map fast travel is
        ; globally disabled, while retaining the engine's situational restrictions.
        if !Game.IsFastTravelControlsEnabled()
            resetFastTravel = true
            Game.EnableFastTravel(true)
        endif

        if Game.IsFastTravelEnabled()
            playerRef.MoveTo(teleportDestination, 0.0, 0.0, 0.0, true)

            animal = currentAnimal.GetReference() as Actor
            follower = currentFollower.GetReference() as Actor

            if animal
                animal.MoveTo(playerRef, 25.0, 25.0, 0.0, true)
                animal.StopCombat()
            endif

            if follower
                follower.MoveTo(playerRef, 25.0, 25.0, 0.0, true)
                follower.StopCombat()
            endif

            if DLC1SeranaRef.IsInFaction(WIFollowerCommentFaction)
                DLC1SeranaRef.MoveTo(playerRef, 25.0, 25.0, 0.0, true)
                DLC1SeranaRef.StopCombat()
            endif

            Utility.Wait(0.1)
            TeleportImod.Apply(1.0)
            TeleportSound.Play(akTarget)
        else
            dvCannotFastTravel.Show()
        endif

        if resetFastTravel
            Game.EnableFastTravel(false)
        endif
    endif
EndEvent

Bool Function CheckIsInPlaneOfOblivion(WorldSpace akCurrentWorldspace, Bool abCheckDreamstride, Bool abInDreamstride)
    Bool inDreamstride = false
    Location playerLocation = playerRef.GetCurrentLocation()
    Cell playerCell = playerRef.GetParentCell()

    if !akCurrentWorldspace
        akCurrentWorldspace = playerRef.GetWorldSpace()
    endif

    if abCheckDreamstride
        inDreamstride = PlayerInDreamstride()
    else
        inDreamstride = abInDreamstride
    endif

    wasInDreamstride = inDreamstride

    return Survival_OblivionLocations.HasForm(playerLocation as Form) || Survival_OblivionAreas.HasForm(akCurrentWorldspace as Form) || Survival_OblivionCells.HasForm(playerCell as Form) || inDreamstride
EndFunction

Bool Function PlayerInDreamstride()
    Int DA16Stage = DA16.GetStage()
    Int ForgottenCityStage = ForgottenCityQuest.GetStage()

    return (DA16Stage >= 145 && DA16Stage < 160) || (ForgottenCityStage >= 400 && ForgottenCityStage < 5500)
EndFunction
