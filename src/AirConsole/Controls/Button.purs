module AirConsole.Controls.Button where

import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0)
import Data.Options (Option, opt)

down :: forall e a. Option AirConsoleControl (Fn0 (Eff e a))
down = opt "down"

up :: forall e a. Option AirConsoleControl (Fn0 (Eff e a))
up = opt "up"
