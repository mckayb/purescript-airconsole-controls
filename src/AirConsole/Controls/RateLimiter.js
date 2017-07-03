'use strict'

exports.getRateLimiterGlobalImpl = function (ac) {
  return function (opts) {
    return function () {
      return new RateLimiter(ac, opts)
    }
  }
}
