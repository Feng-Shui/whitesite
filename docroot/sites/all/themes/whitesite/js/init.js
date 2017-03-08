/**
 * @file
 * A JavaScript file for the theme.
 */

(function ($, Drupal, window, document, undefined) {

  Drupal.behaviors.whitesite = {
    attach: function(context, settings) {
      settings.whitesite = {};
    }

  };

})(jQuery, Drupal, this, this.document);
