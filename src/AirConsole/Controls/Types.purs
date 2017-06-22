module AirConsole.Controls.Types where

import Control.Monad.Eff (Eff)
import Data.Function.Uncurried (Fn0, Fn1, Fn2)
import Data.Functor (map)
import Data.Functor.Contravariant (cmap)
import Data.Options (Options, Option, options, opt, (:=))

foreign import data CtrlGeneratorGlobal :: Type
foreign import data AirConsoleControl :: Type

label :: Option AirConsoleControl String
label = opt "label"

class_name :: Option AirConsoleControl String
class_name = opt "class_name"

key :: Option AirConsoleControl String
key = opt "key"

opts :: Option AirConsoleControl (Options AirConsoleControl)
opts = cmap options (opt "opts")

type' :: Option AirConsoleControl (Options AirConsoleControl)
type' = cmap options (opt "type")

left :: Option AirConsoleControl (Options AirConsoleControl)
left = cmap options (opt "left")

right :: Option AirConsoleControl (Options AirConsoleControl)
right = cmap options (opt "right")

middle :: Option AirConsoleControl (Array (Options AirConsoleControl))
middle = cmap (map options) (opt "middle")

-- Pad
directionchange :: forall e a. Option AirConsoleControl (Fn2 String Boolean (Eff e a))
directionchange = opt "directionchange"

-- type CtrlGeneratorType r = { label :: String, class_name :: String | r }
-- type SideControl r s = { type :: CtrlGeneratorType r | s }
-- type MiddleControl r = Array (CtrlGeneratorType r)
-- type MandatoryCtrlGeneratorOpts r s t u v = { left :: SideControl r s
                                            -- , middle :: MiddleControl t
                                            -- , right :: Array (SideControl u v)
                                            -- }
