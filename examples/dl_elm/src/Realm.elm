port module Realm exposing (..)
import Json.Encode as JE
import Html as H exposing (..)
import Html.Attributes as H exposing (..)

port loadWidget : JE.Value -> Cmd msg

type alias WidgetSpec = {
    id: String
    , config: JE.Value
    ,uid: String

  }


child : WidgetSpec ->  Html msg
child spec =
    H.div [ H.id spec.uid ] []


wrapped : String -> Html msg -> Html msg
wrapped uid html =
    H.div [ H.id <| uid ++ "_actual" ] [html]


