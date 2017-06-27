module AirConsole.Controls.ShakeDetector where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.Controls.Types (AirConsoleControl)
import AirConsole.FFI (runFn1, runEffFn1, runEffFn2)
import Data.Function.Uncurried (Fn0)
import Data.Options (Option, opt)
import Data.Foreign (Foreign)

foreign import data ShakeDetectorGlobal :: Type
foreign import getShakeDetectorGlobal :: forall e. Foreign -> Eff e ShakeDetectorGlobal

threshold :: Option AirConsoleControl Number
threshold = opt "threshold"

timeout :: Option AirConsoleControl Number
timeout = opt "timeout"

callback :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
callback = opt "callback"
