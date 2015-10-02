axis         = require 'axis'
rupture      = require 'rupture'
lost         = require 'lost'
autoprefixer = require 'autoprefixer-stylus'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  dump_dirs: ['src', 'assets']
  output: 'dist'

  locals:
    title: 'WeWork UI Kit (OUI)'

  extensions: [
    css_pipeline(files: ['assets/css/**/*.styl', 'src/components/**/*.styl'], out: 'css/build.css', minify: true, hash: true)
  ]

  stylus:
    use: [lost(), axis(), rupture(), autoprefixer()]
