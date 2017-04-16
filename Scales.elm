module Scales exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import List exposing (map)
import Types exposing (ScaleData, Msg(ChangeKey, Play))
import Chords exposing (keyList, playbackSpeedSlider)
import List.Extra exposing (getAt, elemIndex)
import Audio exposing (scales)


scalesPage model =
    div []
        [ playbackSpeedSlider "SCALE PLAYBACK SPEED" model
        , div [ scalePageStyle ]
            [ ionianModeView model
            , aeolianModeView model
            , majorPentatonicView model
            , minorPentatonicView model
            , lydianModeView model
            , mixolydianModeView model
            , dorianModeView model
            ]
        ]


ionianModeView model =
    let
        data accessor =
            (scaleStringSchema (fretOffset model) model.musKey ionianMode) |> accessor

        markup a =
            span [ style [ ( "paddingRight", "10px" ), ( "fontSize", "18px" ) ] ] [ text (toString a) ]
    in
        div [ scaleContainerStyle, onClick (Play (Audio.scales "major") (fretOffset model)) ]
            [ span [ scaleTitleStyle ] [ scaleNameMajor model " MAJOR SCALE " "" ]
            , stringView
            , div [ fretNumberStyle "490px" ] (List.map markup <| data .one)
            , div [ fretNumberStyle "420px" ] (List.map markup <| data .two)
            , div [ fretNumberStyle "320px" ] (List.map markup <| data .three)
            , div [ fretNumberStyle "220px" ] (List.map markup <| data .four)
            , div [ fretNumberStyle "120px" ] (List.map markup <| data .five)
            , div [ fretNumberStyle "50px" ] (List.map markup <| data .six)
            ]


aeolianModeView model =
    let
        computedOffset =
            if fretOffset model - 3 < -8 then
                fretOffset model + 9
            else
                fretOffset model - 3

        data accessor =
            (scaleStringSchema computedOffset model.musKey aeolianMode) |> accessor

        markup a =
            span [ style [ ( "paddingRight", "10px" ), ( "fontSize", "18px" ) ] ] [ text (toString a) ]
    in
        div [ scaleContainerStyle, onClick (Play (Audio.scales "minor") (fretOffset model)) ]
            [ span [ scaleTitleStyle ] [ scaleNameMinor model " MINOR SCALE " ]
            , stringView
            , div [ fretNumberStyle "460px" ] (List.map markup <| data .one)
            , div [ fretNumberStyle "380px" ] (List.map markup <| data .two)
            , div [ fretNumberStyle "300px" ] (List.map markup <| data .three)
            , div [ fretNumberStyle "240px" ] (List.map markup <| data .four)
            , div [ fretNumberStyle "150px" ] (List.map markup <| data .five)
            , div [ fretNumberStyle "50px" ] (List.map markup <| data .six)
            ]


majorPentatonicView model =
    let
        data accessor =
            (scaleStringSchema (fretOffset model) model.musKey majorPentatonicMode) |> accessor

        markup a =
            span [ style [ ( "paddingRight", "10px" ), ( "fontSize", "18px" ) ] ] [ text (toString a) ]
    in
        div [ scaleContainerStyle, onClick (Play (Audio.scales "majPentatonic") (fretOffset model)) ]
            [ span [ scaleTitleStyle ] [ scaleNameMajor model " MAJOR PENTATONIC SCALE " "" ]
            , stringView
            , div [ fretNumberStyle "450px" ] (List.map markup <| data .one)
            , div [ fretNumberStyle "370px" ] (List.map markup <| data .two)
            , div [ fretNumberStyle "290px" ] (List.map markup <| data .three)
            , div [ fretNumberStyle "210px" ] (List.map markup <| data .four)
            , div [ fretNumberStyle "130px" ] (List.map markup <| data .five)
            , div [ fretNumberStyle "50px" ] (List.map markup <| data .six)
            ]


minorPentatonicView model =
    let
        computedOffset =
            if fretOffset model - 3 < -8 then
                fretOffset model + 9
            else
                fretOffset model - 3

        data accessor =
            (scaleStringSchema computedOffset model.musKey minorPentatonicMode) |> accessor

        markup a =
            span [ style [ ( "paddingRight", "10px" ), ( "fontSize", "18px" ) ] ] [ text (toString a) ]
    in
        div [ scaleContainerStyle, onClick (Play (Audio.scales "minPentatonic") (fretOffset model)) ]
            [ span [ scaleTitleStyle ] [ scaleNameMinor model " MINOR PENTATONIC SCALE " ]
            , stringView
            , div [ fretNumberStyle "450px" ] (List.map markup <| data .one)
            , div [ fretNumberStyle "370px" ] (List.map markup <| data .two)
            , div [ fretNumberStyle "290px" ] (List.map markup <| data .three)
            , div [ fretNumberStyle "210px" ] (List.map markup <| data .four)
            , div [ fretNumberStyle "130px" ] (List.map markup <| data .five)
            , div [ fretNumberStyle "50px" ] (List.map markup <| data .six)
            ]


lydianModeView model =
    let
        data accessor =
            (scaleStringSchema (fretOffset model) model.musKey lydianMode) |> accessor

        markup a =
            span [ style [ ( "paddingRight", "10px" ), ( "fontSize", "18px" ) ] ] [ text (toString a) ]
    in
        div [ scaleContainerStyle, onClick (Play (Audio.scales "lydian") (fretOffset model)) ]
            [ span [ scaleTitleStyle ] [ scaleNameMajor model " LYDIAN MODE " " ( #4 ) " ]
            , stringView
            , div [ fretNumberStyle "490px" ] (List.map markup <| data .one)
            , div [ fretNumberStyle "390px" ] (List.map markup <| data .two)
            , div [ fretNumberStyle "320px" ] (List.map markup <| data .three)
            , div [ fretNumberStyle "220px" ] (List.map markup <| data .four)
            , div [ fretNumberStyle "120px" ] (List.map markup <| data .five)
            , div [ fretNumberStyle "50px" ] (List.map markup <| data .six)
            ]


mixolydianModeView model =
    let
        data accessor =
            (scaleStringSchema (fretOffset model) model.musKey mixolydianMode) |> accessor

        markup a =
            span [ style [ ( "paddingRight", "10px" ), ( "fontSize", "18px" ) ] ] [ text (toString a) ]
    in
        div [ scaleContainerStyle, onClick (Play (Audio.scales "mixolydian") (fretOffset model)) ]
            [ span [ scaleTitleStyle ] [ scaleNameMajor model " MIXOLYDIAN MODE " " ( b7 ) " ]
            , stringView
            , div [ fretNumberStyle "490px" ] (List.map markup <| data .one)
            , div [ fretNumberStyle "390px" ] (List.map markup <| data .two)
            , div [ fretNumberStyle "320px" ] (List.map markup <| data .three)
            , div [ fretNumberStyle "220px" ] (List.map markup <| data .four)
            , div [ fretNumberStyle "120px" ] (List.map markup <| data .five)
            , div [ fretNumberStyle "50px" ] (List.map markup <| data .six)
            ]


dorianModeView model =
    let
        data accessor =
            (scaleStringSchema (fretOffset model) model.musKey dorianMode) |> accessor

        markup a =
            span [ style [ ( "paddingRight", "10px" ), ( "fontSize", "18px" ) ] ] [ text (toString a) ]
    in
        div [ scaleContainerStyle, onClick (Play (Audio.scales "dorian") (fretOffset model)) ]
            [ span [ scaleTitleStyle ] [ scaleNameMajor model " DORIAN MODE " " ( b3, b7 ) " ]
            , stringView
            , div [ fretNumberStyle "500px" ] (List.map markup <| data .one)
            , div [ fretNumberStyle "410px" ] (List.map markup <| data .two)
            , div [ fretNumberStyle "310px" ] (List.map markup <| data .three)
            , div [ fretNumberStyle "210px" ] (List.map markup <| data .four)
            , div [ fretNumberStyle "140px" ] (List.map markup <| data .five)
            , div [ fretNumberStyle "40px" ] (List.map markup <| data .six)
            ]


stringView =
    div [ stringContainerStyle ]
        [ div [ stringStyle ] []
        , div [ stringStyle ] []
        , div [ stringStyle ] []
        , div [ stringStyle ] []
        , div [ stringStyle ] []
        , div [ stringStyle ] []
        ]


{-| Basic layout for notes per string.
-}
scaleStringSchema offset key scale =
    let
        mapper =
            List.map (\a -> a + offset)
    in
        { one = mapper scale.e
        , two = mapper scale.b
        , three = mapper scale.g
        , four = mapper scale.d
        , five = mapper scale.a
        , six = mapper scale.e6
        }


{-| Shifts scale schema numbers up or down depending on key.
-}



--fretOffset : Model -> Int


fretOffset model =
    case model.musKey of
        "C" ->
            0

        "G" ->
            -5

        "D" ->
            2

        "A" ->
            -3

        "E" ->
            4

        "B" ->
            -1

        "F#" ->
            -6

        "Db" ->
            1

        "Ab" ->
            -4

        "Eb" ->
            3

        "Bb" ->
            -2

        "F" ->
            -7

        "a" ->
            0

        "e" ->
            -5

        "b" ->
            2

        "f#" ->
            -3

        "c#" ->
            4

        "g#" ->
            -1

        "d#" ->
            6

        "a#" ->
            1

        "f" ->
            -4

        "c" ->
            3

        "g" ->
            -2

        "d" ->
            5

        _ ->
            0


scaleNameMajor : Types.Model -> String -> String -> Html Msg
scaleNameMajor model scaleName modifiedNotes =
    let
        index =
            Maybe.withDefault 0 <| elemIndex model.musKey Chords.keyList

        slicer =
            String.slice 0 1
    in
        if slicer (String.toUpper model.musKey) == slicer model.musKey then
            div []
                [ span [] [ text model.musKey ]
                , span [ style [ ( "color", "#777" ) ] ] [ text scaleName ]
                , span [ style [ ( "color", "#5CE6CD" ) ] ] [ text modifiedNotes ]
                ]
        else
            div []
                [ span [] [ text (Maybe.withDefault "C" <| getAt (index - 12) Chords.keyList) ]
                , span [ style [ ( "color", "#777" ) ] ] [ text scaleName ]
                , span [ style [ ( "color", "#5CE6CD" ) ] ] [ text modifiedNotes ]
                , span [ style [ ( "color", "#777" ) ] ] [ text (", relative major") ]
                ]


scaleNameMinor : Types.Model -> String -> Html Msg
scaleNameMinor model scaleName =
    let
        index =
            Maybe.withDefault 0 <| elemIndex model.musKey Chords.keyList

        slicer =
            String.slice 0 1
    in
        if slicer (String.toLower model.musKey) == slicer model.musKey then
            div []
                [ span [] [ text (String.toUpper (slicer model.musKey) ++ String.slice 1 2 model.musKey) ]
                , span [ style [ ( "color", "#777" ) ] ] [ text (" " ++ scaleName) ]
                ]
        else
            div []
                [ span [] [ text (String.toUpper (Maybe.withDefault "a" <| getAt (index + 12) Chords.keyList)) ]
                , span [ style [ ( "color", "#777" ) ] ] [ text (" " ++ scaleName ++ " , relative minor") ]
                ]



-- Layout of scales in frets per string.


ionianMode =
    { e = [ 7, 8, 10 ]
    , b = [ 8, 10 ]
    , g = [ 7, 9, 10 ]
    , d = [ 7, 9, 10 ]
    , a = [ 7, 8, 10 ]
    , e6 = [ 8, 10 ]
    }


aeolianMode =
    { e = [ 8, 10, 11 ]
    , b = [ 8, 9, 11 ]
    , g = [ 7, 8, 10 ]
    , d = [ 8, 10 ]
    , a = [ 8, 10, 11 ]
    , e6 = [ 8, 10, 11 ]
    }


majorPentatonicMode =
    { e = [ 8, 10 ]
    , b = [ 8, 10 ]
    , g = [ 7, 10 ]
    , d = [ 7, 10 ]
    , a = [ 7, 10 ]
    , e6 = [ 8, 10 ]
    }


minorPentatonicMode =
    { e = [ 8, 11 ]
    , b = [ 8, 11 ]
    , g = [ 8, 10 ]
    , d = [ 8, 10 ]
    , a = [ 8, 10 ]
    , e6 = [ 8, 11 ]
    }


lydianMode =
    { e = [ 7, 8, 10 ]
    , b = [ 7, 8, 10 ]
    , g = [ 7, 9 ]
    , d = [ 7, 9, 10 ]
    , a = [ 7, 9, 10 ]
    , e6 = [ 8, 10 ]
    }


mixolydianMode =
    { e = [ 8, 10 ]
    , b = [ 8, 10, 11 ]
    , g = [ 7, 9, 10 ]
    , d = [ 7, 8, 10 ]
    , a = [ 7, 8, 10 ]
    , e6 = [ 8, 10 ]
    }


dorianMode =
    { e = [ 8, 10, 11 ]
    , b = [ 8, 10, 11 ]
    , g = [ 7, 8, 10 ]
    , d = [ 7, 8, 10 ]
    , a = [ 8, 10 ]
    , e6 = [ 8, 10, 11 ]
    }



-- STYLES


scaleTitleStyle =
    style
        [ ( "position", "relative" )
        , ( "color", "#E91750" )
        ]


scaleContainerStyle =
    style
        [ ( "position", "relative" )
        , ( "width", "650px" )
        , ( "margin", "30px 0" )
        ]


stringStyle =
    style
        [ ( "width", "600px" )
        , ( "borderBottom", "1px solid #333" )
        , ( "marginTop", "32px" )
        , ( "zIndex", "0" )
        ]


stringContainerStyle =
    style
        [ ( "position", "absolute" )
        , ( "top", "12px" )
        , ( "left", "0" )
        ]


fretNumberStyle margin =
    style
        [ ( "position", "relative" )
        , ( "margin", "5px " ++ margin )
        , ( "color", "#fff" )
        , ( "zIndex", "1" )
        ]


scalePageStyle =
    style
        [ ( "display", "flex" )
        , ( "flexDirection", "row" )
        , ( "flexWrap", "wrap" )
        , ( "justifyContent", "center" )
        ]
