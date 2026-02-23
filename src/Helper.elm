module Helper exposing (evalChars, headers, hyperlink, isUpperChars, joinWords)

import Char
import Html exposing (Html, a, div, h1, h2, h3, h4, h5, h6, text)
import Html.Attributes exposing (href)



-- joinWords


joinWords : String -> String -> String
joinWords str1 str2 =
    str1 ++ str2



-- isUpperChars


isUpperChars : List Char -> List Bool
isUpperChars chars =
    List.map Char.isUpper chars



-- evalChars


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars chars fn =
    List.map fn chars



-- headers


headers : String -> Html msg
headers content =
    div []
        [ h1 [] [ text content ]
        , h2 [] [ text content ]
        , h3 [] [ text content ]
        , h4 [] [ text content ]
        , h5 [] [ text content ]
        , h6 [] [ text content ]
        ]



-- hyperlink


hyperlink : String -> String -> Html msg
hyperlink url label =
    a [ href url ] [ text label ]
