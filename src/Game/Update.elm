module Game.Update where


import Game.Model as Game
import Effects exposing (Effects)


type Action =
    RecieveGame (Result String Game.Model)


update : Action -> Game.Model -> (Game.Model, Effects Action)
update action model =
    case action of
        RecieveGame (Ok game) ->
            (game, Effects.none)

        RecieveGame (Err msg) ->
            let log = Debug.log ("error: " ++ msg)
            in (model, Effects.none )