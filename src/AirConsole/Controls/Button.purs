module AirConsole.Controls.Button where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0)
import Data.Options (Option, opt)

down :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
down = opt "down"

up :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
up = opt "up"
