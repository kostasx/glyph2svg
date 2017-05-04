parseString = require('xml2js').parseString
he          = require 'he'
fs          = require 'fs'

convertUnicode = (name)->

  if require('chardet').detect(name) is "UTF-32LE"
    return he.encode(name)
  else
    return name

init = ()->

  if process.argv.length < 3
    console.log 'Usage: glyph2svg glyph.svg '
    process.exit()

  glyph = process.argv[2]
  glyph = fs.readFileSync(glyph, 'utf8')

  parseString(glyph, {

    attrValueProcessors : [convertUnicode]

    }, (err, res)->

      unicode = res.glyph.$.unicode
      path    = res.glyph.$.d

      svg = "<svg width='1500px' height='1500px' version='1.1' xmlns='http://www.w3.org/2000/svg'>
      <path transform='scale(1, -1) translate(0, -1500)' unicode='#{unicode}' d='#{path}' />
      </svg>"
      console.log svg
      svg

  )

init()