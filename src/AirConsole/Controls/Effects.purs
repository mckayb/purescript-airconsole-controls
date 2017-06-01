module AirConsole.Controls.Effects where

import Control.Monad.Eff (kind Effect)

foreign import data SET_AIRCONSOLE :: Effect
foreign import data GENERATE :: Effect
foreign import data CLEAR :: Effect
