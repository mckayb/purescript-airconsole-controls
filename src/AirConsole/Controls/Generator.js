"use strict"

exports.getCtrlGeneratorGlobal = function() {
  return function() {
    return CtrlGenerator
  }
}
