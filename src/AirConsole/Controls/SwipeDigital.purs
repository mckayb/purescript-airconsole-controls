module AirConsole.Controls.SwipeDigital where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Foreign (Foreign)
import Data.Function.Uncurried (Fn1, Fn2)
import Data.Options (Option, opt)

foreign import data SwipeDigitalGlobal :: Type
foreign import getSwipeDigitalGlobal :: forall e. String -> Foreign -> Eff e SwipeDigitalGlobal

type ActiveDirections = { up :: Boolean
                        , down :: Boolean
                        , left :: Boolean
                        , right :: Boolean
                        }

type AllowedDirections = { fourway :: String
                         , eightway :: String
                         , horizontal :: String
                         , vertical :: String
                         }

log :: Option AirConsoleControl Boolean
log = opt "log"

touchstart :: forall a e. Option AirConsoleControl (Fn1 a (Eff e Unit))
touchstart = opt "touchstart"

touchmove :: forall a e. Option AirConsoleControl (Fn1 a (Eff e Unit))
touchmove = opt "touchmove"

touchend :: forall a e. Option AirConsoleControl (Fn2 a Boolean (Eff e Unit))
touchend = opt "touchend"

onTrigger :: forall e. Option AirConsoleControl (Fn1 ActiveDirections (Eff e Unit))
onTrigger = opt "onTrigger"
