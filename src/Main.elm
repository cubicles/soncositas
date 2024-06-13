module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

-- MODEL

type alias Model =
    { }


init : Model
init =
    { }


-- UPDATE

type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


-- VIEW

view : Model -> Html Msg
view model =
    div
        [ style "background-color" "#FFC0CB"
        , style "height" "100vh"
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        , style "flex-direction" "column"
        , style "text-align" "center"
        ]
        [ div [ style "font-size" "5em", style "color" "white" ] [ text "Te amo amor" ]
        , div []
            [ Html.node "audio"
                [ Html.Attributes.src "rosa_pastel.mp3"
                , Html.Attributes.autoplay True
                , Html.Attributes.loop True
                ]
                []
            ]
        ]


-- MAIN

main =
    Browser.sandbox { init = init, update = update, view = view }

