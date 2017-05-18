module Pages.MainViews exposing (mainView)

import Html exposing (Html, div, span, hr, text, a, input, h3, h1)
import Html exposing (Html, div, span, hr, text, a, input, h3)
import Html.Attributes exposing (style, href, value, type_, href)
import Html.Events exposing (onClick, onInput)
import Logic.Routing as Routing
import Logic.Types exposing (Model, Msg(..), Route(..), PlayBundle)
import Pages.Home exposing (homePage)
import Pages.Chords exposing (chordsPage, keyListMajor, keyListMinor)
import Pages.Scales exposing (scalesPage)
import Pages.Fretboard exposing (fretboardPage)
import Pages.Strum exposing (view, model)
import Pages.FingerPick exposing (view, model)
import Pages.Modal exposing (..)
import Styles.MainStyles exposing (..)
import InlineHover exposing (hover)


mainView : Model -> Html Msg
mainView model =
    div [ style [ ( "position", "relative" ), ( "overflow", "hidden" ), ( "padding", "5px" ) ] ]
        [ nav model
        , page model
        , modal model
        ]


nav : Model -> Html Msg
nav model =
    let
        navItem rte page =
            if String.startsWith page (String.toUpper <| toString model.route) == True then
                a [ onClick <| NewUrl rte, navItemStyle model.navMenuOpen, style [ ( "color", "#03a9f4" ) ] ] [ text page ]
            else
                a [ onClick <| NewUrl rte, navItemStyle model.navMenuOpen ] [ text page ]
    in
        div [ navMenuStyle model ]
            [ div [ navTitleStyle ] [ text "Fret Theory" ]
            , navIcon model
            , modalIcon model
            , div []
                (List.map2 navItem (pathList model) pageList)
            , playbackSpeedSlider model
            , div [ style [ ( "position", "relative" ) ] ] [ keyListView model ]
            , signature model.navMenuOpen
            ]


pageList : List String
pageList =
    [ "HOME"
    , "CHORDS"
    , "SCALES"
    , "FRETBOARD"
    , "STRUMMING"
    , "FINGERPICKING"
    ]


pathList : Model -> List String
pathList model =
    [ Routing.homePath
    , Routing.chordsPath model.musKey
    , Routing.scalesPath model.musKey
    , Routing.fretboardPath model.musKey
    , Routing.strummingPath
    , Routing.fingerPickingPath
    ]


navIcon : Model -> Html Msg
navIcon model =
    div [ navIconStyle model, onClick ShowNavMenu ]
        [ hr [ navIconStyleHr model.navMenuOpen ] []
        , hr [ navIconStyleHr model.navMenuOpen ] []
        , hr [ navIconStyleHr model.navMenuOpen ] []
        ]


keyListView : Model -> Html Msg
keyListView model =
    let
        keyOptions key =
            if key == model.musKey then
                span [ keyListStyle, onClick <| ChangeKey key, style [ ( "border", "1px solid #03a9f4" ), ( "color", "#03a9f4" ) ] ] [ text key ]
            else
                span [ keyListStyle, onClick <| ChangeKey key, style [ ( "border", "1px solid #333" ), ( "color", "#fff" ) ] ] [ text key ]
    in
        div [ keyListContainerStyle model.navMenuOpen ]
            [ h3 [ keyListKeyTitleStyle ] [ text "SELECT KEY" ]
            , div [ textContainerStyle ]
                (List.map keyOptions keyListMajor)
            , div [ textContainerStyle ]
                (List.map keyOptions keyListMinor)
            ]


signature : Bool -> Html Msg
signature bool =
    div [ navItemStyle bool, signatureStyle ]
        [ hover highlight a [ href "https://www.github.com/fedreg", style [ ( "color", "#666" ) ] ] [ text "c. 2017 FedReg (v. 0.1)" ] ]


page : Model -> Html Msg
page model =
    case model.route of
        ChordsRoute _ ->
            Pages.Chords.view Pages.Chords.model

        FretboardRoute _ ->
            fretboardPage model

        ScalesRoute _ ->
            scalesPage model

        HomeRoute ->
            homePage model

        StrummingRoute ->
            Pages.Strum.view Pages.Strum.model

        FingerPickingRoute ->
            Pages.FingerPick.view Pages.FingerPick.model

        NotFoundRoute ->
            notFoundPage


notFoundPage =
    h1 [ style [ ( "margin", "100px 300px" ), ( "color", "#03a9f4" ) ] ] [ text ("Page Not Found! ") ]


playbackSpeedSlider : Model -> Html Msg
playbackSpeedSlider model =
    div [ navItemStyle model.navMenuOpen, style [ ( "marginTop", "100px" ) ] ]
        [ div [] [ text ("+ " ++ "AUDIO SPEED" ++ " -") ]
        , input
            [ type_ "range"
            , Html.Attributes.min "1"
            , Html.Attributes.max "10"
            , value <| toString model.sliderValue
            , onInput ChangeSliderValue
            ]
            []
        ]