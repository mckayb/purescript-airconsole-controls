module AirConsole.Controls.SwipeAnalog where

import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.Controls.Types (AirConsoleControl)
import AirConsole.FFI (runFn1, runEffFn1, runEffFn2)
import Data.Function.Uncurried (Fn1, Fn2)
import Data.Options (Option, opt)
import Data.Foreign (Foreign)

foreign import data SwipeAnalogGlobal :: Type
foreign import getSwipeAnalogGlobal :: forall a e. String -> Foreign -> SwipeAnalogGlobal

type SwipeVector = { x :: Number
                   , y :: Number
                   , angle :: Number
                   , degree :: Number
                   , distance :: Number
                   , speed :: Number
                   }

min_swipe_distance :: Option AirConsoleControl Number
min_swipe_distance = opt "min_swipe_distance"

is_slingshot :: Option AirConsoleControl Boolean
is_slingshot = opt "is_slingshot"

log :: Option AirConsoleControl Boolean
log = opt "log"

touchstart :: forall a e. Option AirConsoleControl (Fn1 a (Eff e Unit))
touchstart = opt "touchstart"

touchmove :: forall a e. Option AirConsoleControl (Fn1 a (Eff e Unit))
touchmove = opt "touchmove"

touchend :: forall a e. Option AirConsoleControl (Fn2 a Boolean (Eff e Unit))
touchend = opt "touchend"

onTrigger :: forall e. Option AirConsoleControl (Fn1 SwipeVector (Eff e Unit))
onTrigger = opt "onTrigger"
