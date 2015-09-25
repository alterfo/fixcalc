gulp = require 'gulp'
browserSync = require 'browser-sync'
reload = browserSync.reload

gulp.task 'images', ->
  gulp.src './app/i/{*.png, *.gif, *.jpg}'
  .pipe gulp.dest('./build/i')
  .pipe reload({ stream: true })