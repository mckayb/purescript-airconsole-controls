module AirConsole.Controls.Generator where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.Controls.Types (CtrlGeneratorGlobal)
import AirConsole.FFI ( runEffFn0
                      , runEffFn1
                      )
import Data.Foreign (Foreign)

foreign import getCtrlGeneratorGlobal :: forall e. Eff e CtrlGeneratorGlobal

setAirConsole
    :: forall e
     . CtrlGeneratorGlobal
    -> AirConsoleGlobal
    -> Eff e CtrlGeneratorGlobal
setAirConsole = runEffFn1 "setAirConsole"

debug
    :: forall e
     . Boolean
    -> CtrlGeneratorGlobal
    -> Eff e CtrlGeneratorGlobal
debug a = runEffFn1 "debug" a

clear :: forall e. CtrlGeneratorGlobal -> Eff e Unit
clear = runEffFn0 "clear"

generate
    :: forall e
     . CtrlGeneratorGlobal
    -> Foreign
    -> Eff e Unit
generate cfg = runEffFn1 "generate" cfg

-- genType :: forall r. String -> CtrlGeneratorGlobal -> CtrlGeneratorType r
-- genType t =  unsafeGetField t <<< unsafeGetField "Type"
-- Type
-- Element
-- sendInputEvent key pressed params
-- getGeneratedObjects Fn0
