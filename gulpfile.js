/*******************************
            Custom
*******************************/

var
  gulp         = require('gulp'),

  // require tasks as dependencies
  watch        = require('./semantic/tasks/watch'),
  build        = require('./semantic/tasks/build'),
  clean        = require('./semantic/tasks/clean')
;


/*******************************
             Tasks
*******************************/

gulp.task('watch', watch);
gulp.task('build', build);
gulp.task('clean', clean);
