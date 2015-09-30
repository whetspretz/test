axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', '.npmignore', 'ship.*conf']
  dump_dirs: ['src', 'assets']
  output: 'dist'
  debug: 'true'
  open_browser: 'false'

  extensions: [
    css_pipeline(files: ['assets/css/**/*.styl', 'src/components/**/*.styl'])
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
