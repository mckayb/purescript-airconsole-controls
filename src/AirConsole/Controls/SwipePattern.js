'use strict'

exports.getSwipePatternGlobalImpl = function (el) {
  return function (opts) {
    return function () {
      return new SwipePattern(el, opts)
    }
  }
}
