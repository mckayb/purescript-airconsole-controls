'use strict'

exports.getSwipeAnalogGlobalImpl = function (el) {
  return function (opts) {
    return function () {
      return new SwipeAnalog(el, opts)
    }
  }
}
