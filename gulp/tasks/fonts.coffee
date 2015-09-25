gulp = require 'gulp'
browserSync = require 'browser-sync'

reload = browserSync.reload

gulp.task 'fonts', ->
	gulp.src "./app/fonts/{'*.eot','*.woff','*.svg','*.ttf'}"
		.pipe gulp.dest('./build')
		.pipe reload({ stream: true })
		