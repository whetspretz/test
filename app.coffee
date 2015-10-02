axis         = require 'axis'
rupture      = require 'rupture'
lost         = require 'lost'
rucksack     = require 'rucksack-css'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', '.npmignore', 'ship.*conf']

  dump_dirs: ['src', 'assets']
  output: 'dist'
  debug: 'true'
  open_browser: 'false'

  locals:
    title: 'WeWork UI Kit (OUI)'

  extensions: [
    css_pipeline(files: ['assets/css/**/*.styl', 'src/components/**/*.styl'])
  ]

  stylus:
    use: [axis(), rupture()]
    'include css': true
    sourcemap: true

  postcss:
    use: [lost(), rucksack(fallbacks: true, autoprefixer: true)]

  jade:
    pretty: true
