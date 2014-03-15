// Generated by CoffeeScript 1.7.1
(function() {
  $(function() {
    return $.fn.extend({
      typeOut: function(str, speed, callback) {
        var $target, count, intervalId;
        if (speed == null) {
          speed = 250;
        }
        if (!str) {
          str = $(this).text() || $(this).attr("data-typeout");
        }
        $target = $(this);
        count = 1;
        return intervalId = setInterval(function() {
          $target.html(str.substr(0, count));
          count += 1;
          if (count === str.length + 1) {
            clearInterval(intervalId);
            return callback($target);
          }
        }, speed);
      },
      unwrapInner: function(selector) {
        var children;
        children = $(this).children();
        if (children.length === 1) {
          return $(this).html(children.html());
        }
      }
    });
  });

}).call(this);
