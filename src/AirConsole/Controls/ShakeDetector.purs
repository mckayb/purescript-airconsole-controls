module AirConsole.Controls.ShakeDetector where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.Controls.Types (AirConsoleControl)
import AirConsole.FFI (runFn1, runEffFn1, runEffFn2)
import Data.Function.Uncurried (Fn0)
import Data.Options (Options, Option, opt, options)
import Data.Foreign (Foreign)

foreign import data ShakeDetectorGlobal :: Type
foreign import getShakeDetectorGlobalImpl :: forall e. Foreign -> Eff e ShakeDetectorGlobal

getShakeDetectorGlobal :: forall e. Options AirConsoleControl -> Eff e ShakeDetectorGlobal
getShakeDetectorGlobal opts = getShakeDetectorGlobalImpl (options opts)

threshold :: Option AirConsoleControl Number
threshold = opt "threshold"

timeout :: Option AirConsoleControl Number
timeout = opt "timeout"

callback :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
callback = opt "callback"
