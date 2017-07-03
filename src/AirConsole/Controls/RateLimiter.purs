module AirConsole.Controls.RateLimiter where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal, DeviceId)
import AirConsole.Controls.Types (AirConsoleControl)
import AirConsole.FFI (runFn1, runEffFn1, runEffFn2)
import Data.Options (Options, Option, opt, options)
import Data.Foreign (Foreign)

foreign import data RateLimiterGlobal :: Type
foreign import getRateLimiterGlobalImpl :: forall e. AirConsoleGlobal -> Foreign -> Eff e RateLimiterGlobal

getRateLimiterGlobal :: forall e. AirConsoleGlobal -> Options AirConsoleControl -> Eff e RateLimiterGlobal
getRateLimiterGlobal ac opts = getRateLimiterGlobalImpl ac (options opts)

rate_limit :: Option AirConsoleControl Number
rate_limit = opt "rate_limit"

no_rate_limit_for_first_calls :: Option AirConsoleControl Number
no_rate_limit_for_first_calls = opt "no_rate_limit_for_first_calls"

message :: forall a e. RateLimiterGlobal -> DeviceId -> a -> Eff e Unit
message x d msg = runEffFn2 "message" x d msg

broadcast :: forall a e. RateLimiterGlobal -> a -> Eff e Unit
broadcast x msg = runEffFn1 "broadcast" x msg

setCustomDeviceState :: forall a e. RateLimiterGlobal -> a -> Eff e Unit
setCustomDeviceState x s = runEffFn1 "setCustomDeviceState" x s

setCustomDeviceStateProperty :: forall a e. RateLimiterGlobal -> String -> a -> Eff e Unit
setCustomDeviceStateProperty x k v = runEffFn2 "setCustomDeviceStateProperty" x k v

getCustomDeviceState :: forall a. RateLimiterGlobal -> DeviceId -> a
getCustomDeviceState x d = runFn1 "getCustomDeviceState" x d
