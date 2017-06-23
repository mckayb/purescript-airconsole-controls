module AirConsole.Controls.Joystick where

import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0, Fn1)
import Data.Options (Option, opt)

type JoystickOffset = { x :: Number, y :: Number }

touchstart :: forall e a. Option AirConsoleControl (Fn0 (Eff e a))
touchstart = opt "touchstart"

touchmove :: forall e a. Option AirConsoleControl (Fn1 JoystickOffset (Eff e a))
touchmove = opt "touchmove"

touchend :: forall e a. Option AirConsoleControl (Fn0 (Eff e a))
touchend = opt "touchend"
