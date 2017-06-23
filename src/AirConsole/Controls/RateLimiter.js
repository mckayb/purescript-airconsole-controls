'use strict'

exports.getRateLimiterGlobal = function () {
  return function () {
    return RateLimiter
  }
}
