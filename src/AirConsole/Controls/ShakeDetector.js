'use strict'

exports.getShakeDetectorGlobal = function (opts) {
  return function () {
    return new AirConsoleShakeDetector(opts)
  }
}
