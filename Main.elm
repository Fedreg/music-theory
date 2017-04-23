port module Main exposing (..)

import List.Extra exposing (getAt)
import Logic.Routing as Routing
import Logic.Types exposing (Model, Msg(..), Route(..), PlayBundle)
import Logic.Audio exposing (noteSorter)
import Views.Fretboard exposing (fretboardPage, noteStringPos, noteFretPos)
import Views.MainViews exposing (mainView)
import Navigation exposing (Location)
import Time exposing (..)
import Update.Extra.Infix exposing ((:>))
import Random exposing (..)


main =
    Navigation.program OnLocationChange
        { init = init
        , update = update
        , view = mainView
        , subscriptions = subscriptions
        }


init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        ( { route = currentRoute
          , musKey = "C"
          , index = 6
          , currentChord = []
          , notePosition = 80.0
          , showAccidental = "0"
          , sliderValue = 1
          , navMenuOpen = False
          , pitchShift = 0
          , modalOpen = False
          , strumArrow = [ 1, 2, 1, 1, 2, 1, 1, 1 ]
          }
        , Cmd.none
        )


port send : PlayBundle -> Cmd msg


update msg model =
    case msg of
        NoOp ->
            model ! []

        ShowNavMenu ->
            { model | navMenuOpen = not model.navMenuOpen, modalOpen = False } ! []

        ShowModal ->
            { model | modalOpen = not model.modalOpen } ! []

        Randomize ->
            ( model, Random.generate StrumArrowDirection <| Random.list 8 (Random.int 1 2) )

        StrumArrowDirection numList ->
            { model | strumArrow = numList } ! []

        OnLocationChange location ->
            let
                newRoute =
                    Routing.parseLocation location

                newKey =
                    Maybe.withDefault "C" <| Routing.modelUpdateOnHash model location
            in
                { model | route = newRoute, musKey = newKey, modalOpen = False } ! []

        ChangeKey key ->
            { model | musKey = key, navMenuOpen = False } ! []

        Play chord hzShift ->
            { model | currentChord = chord, pitchShift = hzShift }
                ! []
                :> update ResetIndex
                :> update SendNotes

        ResetIndex ->
            { model | index = 0 } ! []

        SendNotes ->
            let
                note =
                    noteSorter <| Maybe.withDefault "e2w" <| getAt model.index model.currentChord

                shiftedNote =
                    { note | frequency = note.frequency * (1.059463 ^ (toFloat model.pitchShift)), sustain = note.sustain * (toFloat model.sliderValue / 2) }
            in
                ( { model | index = model.index + 1 }
                , send (PlayBundle shiftedNote "triangle")
                )

        DrawNote index string accidental ->
            let
                stringOffset =
                    noteStringPos string

                fretOffset =
                    noteFretPos index

                finalOffset =
                    fretOffset + stringOffset
            in
                { model | notePosition = finalOffset, showAccidental = accidental } ! []

        ChangeSliderValue newVal ->
            let
                val =
                    Result.withDefault 1 <| String.toInt newVal
            in
                { model | sliderValue = val } ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    let
        val =
            toFloat model.sliderValue / 10.0
    in
        if model.index < List.length model.currentChord then
            Time.every (val * Time.second) (always SendNotes)
        else
            Sub.none
