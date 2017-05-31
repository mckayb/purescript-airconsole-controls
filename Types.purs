module AirConsoleControls.Types where

foreign import data CtrlGeneratorGlobal :: Type
type CtrlGeneratorType r = { label :: String, class_name :: String | r }
type SideControl r s = { type :: CtrlGeneratorType r | s }
type MiddleControl r = Array (CtrlGeneratorType r)
type MandatoryCtrlGeneratorOpts r s t u v = { left :: SideControl r s
                                            , middle :: MiddleControl t
                                            , right :: Array (SideControl u v)
                                            }

{- foreign import data ButtonControl :: Type
foreign import data JoystickControl :: Type
foreign import data CtrlGeneratorControl :: Type

type CtrlGeneratorOpts = Options CtrlGeneratorControl

ctrlOpts :: { label :: Option CtrlGeneratorControl (Maybe String)
            , class_name :: Option CtrlGeneratorControl (Maybe String)
            , key :: Option CtrlGeneratorControl (Maybe String)
            , type :: Option CtrlGeneratorControl (CtrlGeneratorOpts)
            }
ctrlOpts = { label: optional (opt "label")
           , class_name: optional (opt "class_name")
           , key: optional (opt "key")
           , type: opt "type"
           }

ctrlGeneratorOpts :: { left :: Option CtrlGeneratorControl Foreign
                     , middle :: Option CtrlGeneratorControl (Array CtrlGeneratorOpts)
                     , right :: Option CtrlGeneratorControl (Array CtrlGeneratorOpts)
                     }
ctrlGeneratorOpts = { left: opt "left"
                    , middle: opt "middle"
                    , right: opt "right"
                    }

ctrlGeneratorOpts :: { left :: Option CtrlGeneratorControl (Options CtrlGeneratorControl)
                     , middle :: Option CtrlGeneratorControl (Array CtrlGeneratorOpts)
                     , right :: Option CtrlGeneratorControl (Array CtrlGeneratorOpts)
                     }
ctrlGeneratorOpts = { left: opt "left"
                    , middle: opt "middle"
                    , right: opt "right"
                    }

buttonOpts :: { down :: forall a. Option ButtonControl (Maybe (Fn0 a))
              , up :: forall a. Option ButtonControl (Maybe (Fn0 a))
              , log :: Option ButtonControl (Maybe Boolean)
              }
buttonOpts = { down: optional (opt "down")
             , up: optional (opt "up")
             , log: optional (opt "log")
             }

joystickOpts :: { touchstart :: forall a. Option JoystickControl (Maybe (Fn0 a))
                , touchend :: forall a. Option JoystickControl (Maybe (Fn0 a))
                , touchmove :: forall a. Option JoystickControl (Maybe (Fn0 a))
                , distance :: Option JoystickControl (Maybe Number)
                , min_delta :: Option JoystickControl (Maybe Number)
                , log :: Option JoystickControl (Maybe Boolean)
                , is_relative :: Option JoystickControl (Maybe Boolean)
                }
joystickOpts = { touchstart: optional (opt "touchstart")
               , touchend: optional (opt "touchend")
               , touchmove: optional (opt "touchmove")
               , distance: optional (opt "distance")
               , min_delta: optional (opt "min_delta")
               , log: optional (opt "log")
               , is_relative: optional (opt "is_relative")
           } -}
