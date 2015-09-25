gulp = require 'gulp'
flatten = require 'gulp-flatten'
gulpFilter = require 'gulp-filter'
uglify = require 'gulp-uglify'
minifycss = require 'gulp-minify-css'
rename = require 'gulp-rename'
mainBowerFiles = require 'main-bower-files'

dest_path = 'build'
# grab libraries files from bower_components, minify and push in /public
gulp.task 'bower', ->
  jsFilter = gulpFilter('*.js')
  cssFilter = gulpFilter('*.css')
  fontFilter = gulpFilter([
    '*.eot'
    '*.woff'
    '*.svg'
    '*.ttf'
  ])
  gulp.src(mainBowerFiles())
    .pipe(jsFilter)
    .pipe(gulp.dest(dest_path + '/js/'))
    .pipe(uglify())
    .pipe(rename(suffix: '.min'))
    .pipe(gulp.dest(dest_path + '/js/'))

  gulp.src(mainBowerFiles())
    .pipe(fontFilter).pipe(flatten())
    .pipe gulp.dest(dest_path + '/fonts')
