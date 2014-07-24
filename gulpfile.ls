gulp = require \gulp
plugins = require \gulp-load-plugins
$ = plugins!

gulp.task \style, ->
  gulp.src \./assert/css/main.styl
    .pipe $.plumber!
    .pipe $.stylus!
    .pipe gulp.dest \./assert/css

gulp.task \script, ->
  gulp.src \./assert/js/main.ls
    .pipe $.plumber!
    .pipe $.livescript!
    .pipe gulp.dest \./assert/js

gulp.task \watch, ->
  gulp.watch \./assert/css/*.styl, [\style]
  gulp.watch \./assert/js/*.ls, [\script]
