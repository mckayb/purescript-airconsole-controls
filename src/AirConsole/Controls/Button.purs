module AirConsole.Controls.Button where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Controls.Types (AirConsoleControl)
import Data.Function.Uncurried (Fn0)
import Data.Options (Options, Option, opt, options)
import Data.Foreign (Foreign)

foreign import data ButtonGlobal :: Type
foreign import getButtonGlobalImpl :: forall e. String -> Foreign -> Eff e ButtonGlobal

getButtonGlobal :: forall e. String -> Options AirConsoleControl -> Eff e ButtonGlobal
getButtonGlobal el opts = getButtonGlobalImpl el (options opts)

down :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
down = opt "down"

up :: forall e. Option AirConsoleControl (Fn0 (Eff e Unit))
up = opt "up"

log :: Option AirConsoleControl Boolean
log = opt "log"
