module AirConsole.Controls.RateLimiter where

import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0, Fn1)
import Data.Options (Option, opt)

foreign import data RateLimiterGlobal :: Type
foreign import getRateLimiterGlobal :: forall e. Eff e RateLimiterGlobal
