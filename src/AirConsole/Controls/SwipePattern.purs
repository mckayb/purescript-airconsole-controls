module AirConsole.Controls.SwipePattern where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Options (Options, Option, opt, options)
import Data.Foreign (Foreign)
import Data.Function.Uncurried (Fn1)

foreign import data SwipePatternGlobal :: Type
foreign import getSwipePatternGlobalImpl :: forall e. String -> Foreign -> Eff e SwipePatternGlobal

type SwipePatternCircle r = { x :: Number
                            , y :: Number
                            , radius :: Number
                            , id :: String
                            | r
                            }

getSwipePatternGlobal :: forall e. String -> Options AirConsoleControl -> Eff e SwipePatternGlobal
getSwipePatternGlobal el opts = getSwipePatternGlobalImpl el (options opts)

touchend :: forall e r. Option AirConsoleControl (Fn1 (Array (SwipePatternCircle r)) (Eff e Unit))
touchend = opt "touchend"

onTouchCircle :: forall e r. Option AirConsoleControl (Fn1 (SwipePatternCircle r) (Eff e Unit))
onTouchCircle = opt "onTouchCircle"

circles :: forall r. Option AirConsoleControl (Array (SwipePatternCircle r))
circles = opt "circles"
