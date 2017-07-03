'use strict'

exports.getDPadGlobalImpl = function (el) {
  return function (opts) {
    return function () {
      return new DPad(el, opts)
    }
  }
}

exports.up = DPad.UP
exports.down = DPad.DOWN
exports.left = DPad.LEFT
exports.right = DPad.RIGHT
exports.swipe = DPad.SWIPE
exports.tap = DPad.TAP
