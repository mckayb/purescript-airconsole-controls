'use strict'

exports.getSwipeAnalogGlobal = function (el) {
  return function (opts) {
    return function () {
      return new SwipeAnalog(el, opts)
    }
  }
}
