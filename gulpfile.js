var gulp = require('gulp'),
	coffee = require('gulp-coffee'),
	ngClassify = require('gulp-ng-classify'),
	ngmin = require('gulp-ngmin');

gulp.task('scripts', function () {
	var options = {
		// controller: {
		// 	format: '*',
		// 	suffix: ''
		// }
	};

	return gulp
		.src('**/*.coffee', {cwd: 'src'})
		.pipe(coffee({bare: true}))
		.pipe(ngmin())
		.pipe(gulp.dest('dist'));
});

gulp.task('watch', function () {
	gulp
		.watch('**/*.coffee', {cwd: 'src'}, ['scripts']);
});

gulp.task('default', ['scripts', 'watch']);