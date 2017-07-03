'use strict'

exports.getButtonGlobalImpl = function (el) {
  return function (opts) {
    return function () {
      return new Button(el, opts)
    }
  }
}
