'use strict'

exports.getSwipeDigitalGlobal = function (el) {
  return function (opts) {
    return function () {
      return new SwipeDigital(el, opts)
    }
  }
}
