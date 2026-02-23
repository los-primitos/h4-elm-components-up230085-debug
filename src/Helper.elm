module Helper exposing (..)

import Char
import Html
import Html.Attributes



-- joinWords


joinWords : String -> String -> String
joinWords first second =
    String.append first second



-- isUpperChars


isUpperChars : List Char -> List Bool
isUpperChars chars =
    List.map (\c -> Char.isUpper c) chars



-- evalChars


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars chars transformer =
    List.map transformer chars



-- hyperlink


hyperlink : String -> String -> Html.Html msg
hyperlink link label =
    Html.a
        [ Html.Attributes.href link ]
        [ Html.text label ]



-- headers


headers : String -> Html.Html msg
headers content =
    let
        makeHeader tag =
            tag [] [ Html.text content ]
    in
    Html.div []
        [ makeHeader Html.h1
        , makeHeader Html.h2
        , makeHeader Html.h3
        , makeHeader Html.h4
        , makeHeader Html.h5
        , makeHeader Html.h6
        ]
