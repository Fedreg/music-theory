module Keys exposing (keys, keyList)


keyList : List String
keyList =
    [ "Major Keys", "C", "G", "D", "A", "E", "B", "F#", "Db", "Ab", "Eb", "Bb", "F", "Minor Keys", "a", "e", "b", "f#", "c#", "g#", "d#", "bb", "f", "c", "g", "d" ]


{-| Defines dot placement of each chord.
-}
keys : String -> { bars : List String, i : String, iv : String, names : List String, v : String, vi : String }
keys key =
    case key of
        "C" ->
            { i = "06x353242030121010"
            , iv = "06x06x343232121010"
            , v = "263152040030323413"
            , vi = "06x050242332121010"
            , names = [ "C", "F", "G", "A Min", "5" ]
            , bars = [ "", "", "", "" ]
            }

        "G" ->
            { i = "263152040030323413"
            , iv = "06x253142030323413"
            , v = "06x05x040132323212"
            , vi = "060152242030020010"
            , names = [ "G", "C9", "D", "E Min", "0" ]
            , bars = [ "", "", "", "" ]
            }

        "D" ->
            { i = "06x05x040132323212"
            , iv = "263152040030323413"
            , v = "06x050142232322010"
            , vi = "06x152040030323212"
            , names = [ "D", "G", "A", "B Min", "7" ]
            , bars = [ "", "", "", "" ]
            }

        "A" ->
            { i = "06x050142232322010"
            , iv = "06x05x040132323212"
            , v = "060252342131020010"
            , vi = "162050040232322010"
            , names = [ "A", "D", "E", "F# Min", "2" ]
            , bars = [ "", "", "", "" ]
            }

        "E" ->
            { i = "060252342131020010"
            , iv = "06x050142232322010"
            , v = "060252141332020412"
            , vi = "06x05x344434223112"
            , names = [ "E", "A", "B7", "C# Min", "9" ]
            , bars = [ "", "", "", "" ]
            }

        "B" ->
            { i = "06xb52244334424112"
            , iv = "060252342131020010"
            , v = "b62354444233122112"
            , vi = "b62354444132122112"
            , names = [ "B", "E", "F#", "G# Min", "4" ]
            , bars = [ "", "", "", "4" ]
            }

        "F#" ->
            { i = "b62354444233122112"
            , iv = "06xb52244334424112"
            , v = "06xb52244334424112"
            , vi = "06xb52344434223112"
            , names = [ "F#", "B", "C#", "D# Min", "11" ]
            , bars = [ "", "", "4", "6" ]
            }

        "Db" ->
            { i = "06xb52244334424112"
            , iv = "b62354444233122112"
            , v = "b62354444233122112"
            , vi = "06xb52344434223112"
            , names = [ "Db", "Gb", "Ab", "Bb Min", "6" ]
            , bars = [ "4", "", "4", "" ]
            }

        "Ab" ->
            { i = "b62354444233122112"
            , iv = "06xb52244334424112"
            , v = "06xb52244334424112"
            , vi = "b61353443131121111"
            , names = [ "Ab", "Db", "Eb", "F Min", "1" ]
            , bars = [ "4", "4", "6", "" ]
            }

        "Eb" ->
            { i = "06xb52244334424112"
            , iv = "b62354444233122112"
            , v = "b62354444233122112"
            , vi = "06xb52344434223112"
            , names = [ "Eb", "Ab", "Bb", "C Min", "4" ]
            , bars = [ "6", "4", "6", "3" ]
            }

        "Bb" ->
            { i = "06xb51243333423111"
            , iv = "06xb52244334424112"
            , v = "b61353443232121111"
            , vi = "b62354444132122112"
            , names = [ "Bb", "Eb", "F", "G Min", "3" ]
            , bars = [ "", "6", "", "3" ]
            }

        "F" ->
            { i = "06x05x343232121010"
            , iv = "06xb51243333423111"
            , v = "06x353242030121010"
            , vi = "06x05x040232423111"
            , names = [ "F", "Bb", "C", "D Min", "10" ]
            , bars = [ "", "", "", "" ]
            }

        -- --12 Minor Keys.
        "a" ->
            { i = "06x050242332121010"
            , iv = "06x05x040232423111"
            , v = "060152242030020010"
            , vi = "06x05x343232121010"
            , names = [ "A Min", "D Min", "E Min", "F", "5" ]
            , bars = [ "", "", "", "" ]
            }

        "e" ->
            { i = "060152242030020010"
            , iv = "06x050242332121010"
            , v = "06x152040030323212"
            , vi = "06x353242030121010"
            , names = [ "E Min", "A Min", "B Min", "C", "0" ]
            , bars = [ "", "", "", "" ]
            }

        "b" ->
            { i = "06x05x344434223112"
            , iv = "060152242030020010"
            , v = "162050040232322010"
            , vi = "263152040030323413"
            , names = [ "B Min", "E Min", "F# Min", "G", "7" ]
            , bars = [ "", "", "", "" ]
            }

        "f#" ->
            { i = "b62354444132122112"
            , iv = "06xb52344434223112"
            , v = "06xb52344434223112"
            , vi = "06x05x040132323212"
            , names = [ "F# Min", "B Min", "C# Min", "D", "2" ]
            , bars = [ "", "", "4", "" ]
            }

        "c#" ->
            { i = "06xb52344434223112"
            , iv = "b62354444132122112"
            , v = "b62354444132122112"
            , vi = "06x050142232322010"
            , names = [ "C# Min", "F# Min", "G# Min", "A", "9" ]
            , bars = [ "4", "", "4", "" ]
            }

        "g#" ->
            { i = "b62354444132122112"
            , iv = "06xb52344434223112"
            , v = "06xb52344434223112"
            , vi = "060152242131020010"
            , names = [ "G# Min", "C# Min", "D# Min", "E", "4" ]
            , bars = [ "4", "4", "6", "" ]
            }

        "d#" ->
            { i = "06xb52344434223112"
            , iv = "b62354444132122112"
            , v = "b62354444132122112"
            , vi = "06xb52244334424112"
            , names = [ "D# Min", "G# Min", "A# Min", "B", "11" ]
            , bars = [ "6", "4", "6", "" ]
            }

        "bb" ->
            { i = "b62354444132122112"
            , iv = "06xb52344434223112"
            , v = "06xb52344434223112"
            , vi = "b62354444233122112"
            , names = [ "Bb Min", "Eb Min", "F Min", "Gb", "6" ]
            , bars = [ "6", "6", "8", "" ]
            }

        "f" ->
            { i = "b61353443131111111"
            , iv = "06xb51343433222111"
            , v = "06xb52344434223112"
            , vi = "06xb52244334424112"
            , names = [ "F Min", "Bb Min", "C Min", "Db", "1" ]
            , bars = [ "", "", "3", "4" ]
            }

        "c" ->
            { i = "06xb52344434223112"
            , iv = "b61353443131121111"
            , v = "b62354444132122112"
            , vi = "b62354444233122112"
            , names = [ "C Min", "F Min", "G Min", "Ab", "8" ]
            , bars = [ "3", "", "3", "6" ]
            }

        "g" ->
            { i = "b62354444132122112"
            , iv = "06xb52344434223112"
            , v = "06x05x040232423111"
            , vi = "06xb52244334424112"
            , names = [ "G Min", "C Min", "D Min", "Eb", "3" ]
            , bars = [ "3", "3", "", "6" ]
            }

        "d" ->
            { i = "06x05x040232423111"
            , iv = "b62354444132122112"
            , v = "06x050242332121010"
            , vi = "06xb51243333423111"
            , names = [ "D Min", "G Min", "A Min", "Bb", "10" ]
            , bars = [ "", "3", "", "" ]
            }

        _ ->
            { i = ""
            , iv = ""
            , v = ""
            , vi = ""
            , names = [ "", "", "", "", "" ]
            , bars = [ "" ]
            }