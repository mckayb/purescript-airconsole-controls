module AirConsole.Controls.SwipeAnalog where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn1, Fn2)
import Data.Options (Options, Option, opt, options)
import Data.Foreign (Foreign)

foreign import data SwipeAnalogGlobal :: Type
foreign import getSwipeAnalogGlobalImpl :: forall e. String -> Foreign -> Eff e SwipeAnalogGlobal

getSwipeAnalogGlobal :: forall e. String -> Options AirConsoleControl -> Eff e SwipeAnalogGlobal
getSwipeAnalogGlobal el opts = getSwipeAnalogGlobalImpl el (options opts)

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
