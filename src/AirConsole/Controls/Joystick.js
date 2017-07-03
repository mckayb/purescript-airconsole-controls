'use strict'

exports.getJoystickGlobalImpl = function (el) {
  return function (opts) {
    return function () {
      return new Joystick(el, opts)
    }
  }
}
