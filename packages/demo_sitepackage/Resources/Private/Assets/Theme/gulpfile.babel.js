import gulp from "gulp";
import browserSync from "browser-sync";
import rename from "gulp-rename";
import concat from "gulp-concat";
import postcss from "gulp-postcss";
import fileinclude from "gulp-file-include";
import minifyCss from "gulp-clean-css";
import purgecss from "gulp-purgecss";
import imagemin from "gulp-imagemin";
import uglify from "gulp-uglify-es";

const compileStyles = () => {
	return gulp.src('src/css/tailwind.css')
    .pipe(postcss({
        tailwindcss: {},
        autoprefixer: {},
    }))
    .pipe(rename({
        basename: 'styles'
    }))
    .pipe(gulp.dest('dev/css/'))
    .pipe(browserSync.reload({
        stream: true
    }))
}

const watchStyles = () => {
  gulp.watch('src/css/tailwind.css', compileStyles)
}

const compileHTML = done => {
  gulp.src(['src/html/**/!(_)*.html'],  {base: 'src/html/'})
    .pipe(fileinclude({
      prefix: '@@',
      basepath: '@file'
    }))
    .pipe(gulp.dest('dev/'))
    .pipe(browserSync.reload({
      stream: true
    }))

  done()
}

const watchHTML = () => {
  gulp.watch('src/html/**/*.html', compileHTML)
}

const compileScripts = done => {
  gulp.src(['src/js/lib/*.js']).pipe(gulp.dest('dev/js/lib'))

  gulp.src('src/js/main.js')
    .pipe(concat('scripts.js'))
    .pipe(gulp.dest('dev/js'))
    .pipe(browserSync.reload({
      stream: true
    }))

    done()
}

const watchScripts = () => {
  gulp.watch(['src/js/main.js'], compileScripts);
}

const watchTailwindConfig = () => {
  gulp.watch('tailwind.config.js', compileStyles)
}

const startServer = () => {
  browserSync({
    server: {
      baseDir: 'dev'
    },
    notify: false,
    open: true,
    tunnel: false
  })
}

const copyImages = done => {
  gulp.src(['src/img/**/!(_)*'])
  .pipe(imagemin([
    imagemin.mozjpeg({quality: 75, progressive: true})
  ]))
  .pipe(gulp.dest('dev/img'))
  done()
}

const publishFiles = done => {
  gulp.src(['dev/css/*.css'])
    .pipe(purgecss({
      content: ['src/html/**/*.html'],
      defaultExtractor: content => {
        // Capture as liberally as possible, including things like `h-(screen-1.5)`
        const broadMatches = content.match(/[^<>"'`\s]*[^<>"'`\s:]/g) || []
        // Capture classes within other delimiters like .block(class="w-1/2") in Pug
        const innerMatches = content.match(/[^<>"'`\s.()]*[^<>"'`\s.():]/g) || []
        return broadMatches.concat(innerMatches)
      }
    }))
    .pipe(minifyCss())
    .pipe(gulp.dest('../../../Public/css'))

    gulp.src(['dev/js/lib/*.js']).pipe(gulp.dest('../../../Public/js/lib'))
    gulp.src(['dev/js/*.js'])
      .pipe(uglify())
      .pipe(gulp.dest('../../../Public/js'))

  gulp.src(['dev/img/**/*']).pipe(gulp.dest('../../../Public/img'))

  done()
}

const compile = gulp.parallel(compileStyles, compileHTML, compileScripts)
const serve = gulp.series(compile, startServer)
const watch = gulp.parallel(watchStyles, watchHTML, watchScripts, watchTailwindConfig)
const defaultTasks = gulp.parallel(serve, watch, copyImages)
const publish = gulp.series(compile, publishFiles)

exports.default = defaultTasks
exports.publish = publish