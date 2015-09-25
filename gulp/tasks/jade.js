// Generated by CoffeeScript 1.9.3
(function() {
  var browserSync, gulp, jade, reload;

  gulp = require('gulp');

  jade = require('gulp-jade');

  browserSync = require('browser-sync');

  reload = browserSync.reload;

  gulp.task('jade', function() {
    gulp.src('./app/jade/*.jade').pipe(jade({})).pipe(gulp.dest('./build')).pipe(reload({
      stream: true
    }));
    return gulp.src('./app/jade/partials/*.jade').pipe(jade({})).pipe(gulp.dest('./build/partials/')).pipe(reload({
      stream: true
    }));
  });

}).call(this);

//# sourceMappingURL=jade.js.map
