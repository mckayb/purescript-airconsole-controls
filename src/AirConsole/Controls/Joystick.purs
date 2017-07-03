module AirConsole.Controls.Joystick where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0, Fn1)
import Data.Options (Options, Option, opt, options)
import Data.Foreign (Foreign)

foreign import data JoystickGlobal :: Type
foreign import getJoystickGlobalImpl :: forall e. String -> Foreign -> Eff e JoystickGlobal

getJoystickGlobal :: forall e. String -> Options AirConsoleControl -> Eff e JoystickGlobal
getJoystickGlobal el opts = getJoystickGlobalImpl el (options opts)

type JoystickOffset = { x :: Number, y :: Number }

touchstart :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
touchstart = opt "touchstart"

touchmove :: forall e. Option AirConsoleControl (Fn1 JoystickOffset (Eff e Unit))
touchmove = opt "touchmove"

touchend :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
touchend = opt "touchend"

distance :: Option AirConsoleControl Number
distance = opt "distance"

min_delta :: Option AirConsoleControl Number
min_delta = opt "min_delta"

log :: Option AirConsoleControl Boolean
log = opt "log"
