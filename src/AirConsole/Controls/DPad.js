'use strict'

exports.getDPadGlobal = function () {
  return function() {
    return DPad
  }
}

exports.up = DPad.UP
exports.down = DPad.DOWN
exports.left = DPad.LEFT
exports.right = DPad.RIGHT
exports.swipe = DPad.SWIPE
exports.tap = DPad.TAP
