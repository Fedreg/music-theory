module Assets.Styles.ScalesStyles exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Assets.Logic.Types exposing (Model)


scaleTitleStyle : Attribute msg
scaleTitleStyle =
    style
        [ ( "position", "relative" )
        , ( "color", "#E91750" )
        ]


scaleContainerStyle : Attribute msg
scaleContainerStyle =
    style
        [ ( "position", "relative" )
        , ( "width", "650px" )
        , ( "margin", "30px 0" )
        , ( "cursor", "pointer" )
        ]


stringStyle : Attribute msg
stringStyle =
    style
        [ ( "width", "600px" )
        , ( "borderBottom", "1px solid #333" )
        , ( "marginTop", "32px" )
        , ( "zIndex", "0" )
        ]


stringContainerStyle : Attribute msg
stringContainerStyle =
    style
        [ ( "position", "absolute" )
        , ( "top", "12px" )
        , ( "left", "0" )
        ]


fretNumberStyle : String -> Attribute msg
fretNumberStyle margin =
    style
        [ ( "position", "relative" )
        , ( "margin", "5px " ++ margin )
        , ( "color", "#fff" )
        , ( "zIndex", "1" )
        ]


scalePageStyle : Attribute msg
scalePageStyle =
    style
        [ ( "display", "flex" )
        , ( "flexDirection", "row" )
        , ( "flexWrap", "wrap" )
        , ( "justifyContent", "center" )
        ]


scaleModalStyle : Bool -> Attribute msg
scaleModalStyle isOpen =
    let
        baseStyles display =
            style
                [ ( "display", display )
                , ( "position", "absolute" )
                , ( "top", "50px" )
                , ( "left", "50px" )
                , ( "width", "90vw" )
                , ( "height", "90vh" )
                , ( "border", "1px solid #fff" )
                , ( "backgroundColor", "#000" )
                , ( "opacity", "0.9" )
                , ( "zIndex", "50" )
                , ( "color", "#fff" )
                , ( "textAlign", "center" )
                ]
    in
        case isOpen of
            True ->
                baseStyles "block"

            False ->
                baseStyles "none"


closeModalIcon : Attribute msg
closeModalIcon =
    style
        [ ( "position", "absolute" )
        , ( "top", "5px" )
        , ( "right", "5px" )
        , ( "width", "50px" )
        , ( "padding", "2px" )
        , ( "border", "1px solid #E91750" )
        , ( "cursor", "pointer" )
        , ( "color", "#E91750" )
        ]