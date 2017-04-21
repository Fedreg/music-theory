module Assets.Styles.HomeStyles exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Assets.Logic.Types exposing (Model)


homePageStyle : Attribute msg
homePageStyle =
    style
        [ ( "textAlign", "center" )
        , ( "backgroundColor", "#000" )
        , ( "paddingTop", "80px" )
        ]


titleStyle : String -> String -> Attribute msg
titleStyle fontSize color =
    style
        [ ( "margin", "0 auto" )
        , ( "fontSize", fontSize )
        , ( "color", color )
        , ( "zIndex", "50" )
        ]