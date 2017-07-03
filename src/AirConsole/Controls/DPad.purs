module AirConsole.Controls.DPad where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0, Fn1)
import Data.Options (Options, Option, opt, options)
import Data.Foreign (Foreign)

foreign import data DPadGlobal :: Type
foreign import getDPadGlobalImpl :: forall e. String -> Foreign -> Eff e DPadGlobal
foreign import up :: String
foreign import down :: String
foreign import left :: String
foreign import right :: String
foreign import swipe :: String
foreign import tap :: String
type DPadCoordinate = { x :: Number, y :: Number }

getDPadGlobal :: forall e. String -> Options AirConsoleControl -> Eff e DPadGlobal
getDPadGlobal el opts = getDPadGlobalImpl el (options opts)

directionchange :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
directionchange = opt "directionchange"

touchstart :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
touchstart = opt "touchstart"

touchend :: forall e. Option AirConsoleControl (Fn1 Boolean (Eff e Unit))
touchend = opt "touchend"

distance :: Option AirConsoleControl DPadCoordinate
distance = opt "distance"

relative :: Option AirConsoleControl Boolean
relative = opt "relative"

diagonal :: Option AirConsoleControl Boolean
diagonal = opt "diagonal"
