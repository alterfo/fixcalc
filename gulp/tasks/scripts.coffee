gulp = require 'gulp'
concat = require 'gulp-concat'
browserSync = require 'browser-sync'

reload = browserSync.reload

gulp.task 'clientscripts', ->
	gulp.src 'app/js/*.js'
		.pipe(concat('main.js'))
	  .pipe(gulp.dest('build/js'))
	  .pipe reload({ stream: true })




