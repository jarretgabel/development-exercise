"use strict";

class Helper {

  /**
   * Parameterize string
   * @param  {DOM node} element
   * @param  {string} event
   */
  static parameterize(string) {
    return string.toLowerCase().replace(/[^a-z0-9]+/g,'-').replace(/(^-|-$)/g,'')
  }
}