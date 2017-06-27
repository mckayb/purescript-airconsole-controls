module AirConsole.Controls.Joystick where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0, Fn1)
import Data.Options (Option, opt)

type JoystickOffset = { x :: Number, y :: Number }

touchstart :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
touchstart = opt "touchstart"

touchmove :: forall e. Option AirConsoleControl (Fn1 JoystickOffset (Eff e Unit))
touchmove = opt "touchmove"

touchend :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
touchend = opt "touchend"
