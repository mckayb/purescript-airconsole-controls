'use strict'

exports.getShakeDetectorGlobalImpl = function (opts) {
  return function () {
    return new AirConsoleShakeDetector(opts)
  }
}
