'use strict'

exports.getSwipeDigitalGlobalImpl = function (el) {
  return function (opts) {
    return function () {
      return new SwipeDigital(el, opts)
    }
  }
}
