module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html.Html msg
headers param =
    Html.div []
        [ Html.h1 [] [ Html.text param ]
        , Html.h2 [] [ Html.text param ]
        , Html.h3 [] [ Html.text param ]
        , Html.h4 [] [ Html.text param ]
        , Html.h5 [] [ Html.text param ]
        , Html.h6 [] [ Html.text param ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink url text =
    Html.a [ Html.Attributes.href url ] [ Html.text text ]



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"
--main : Html.Html msg
--main =
--    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
