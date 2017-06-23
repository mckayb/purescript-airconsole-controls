module AirConsole.Controls.DPad where

import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0, Fn1)
import Data.Options (Option, opt)
import AirConsole.FFI (unsafeGetField, runEffFn0)

foreign import data DPadGlobal :: Type
foreign import getDPadGlobal :: forall e. Eff e DPadGlobal
foreign import up :: String
foreign import down :: String
foreign import left :: String
foreign import right :: String
foreign import swipe :: String
foreign import tap :: String
type DPadCoordinate = { x :: Number, y :: Number }

directionchange :: forall e a. Option AirConsoleControl (Fn0 (Eff e a))
directionchange = opt "directionchange"

touchstart :: forall e a. Option AirConsoleControl (Fn0 (Eff e a))
touchstart = opt "touchstart"

touchend :: forall e a. Option AirConsoleControl (Fn1 Boolean (Eff e a))
touchend = opt "touchend"

distance :: Option AirConsoleControl DPadCoordinate
distance = opt "distance"

relative :: Option AirConsoleControl Boolean
relative = opt "relative"

diagonal :: Option AirConsoleControl Boolean
diagonal = opt "diagonal"
