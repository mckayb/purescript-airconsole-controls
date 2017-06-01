module AirConsole.Controls.Types where

foreign import data CtrlGeneratorGlobal :: Type
type CtrlGeneratorType r = { label :: String, class_name :: String | r }
type SideControl r s = { type :: CtrlGeneratorType r | s }
type MiddleControl r = Array (CtrlGeneratorType r)
type MandatoryCtrlGeneratorOpts r s t u v = { left :: SideControl r s
                                            , middle :: MiddleControl t
                                            , right :: Array (SideControl u v)
                                            }
