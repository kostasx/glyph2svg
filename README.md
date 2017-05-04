## USAGE:

```
$ node glyph2svg myglyph.svg
```

## CONVERT FROM:

```
<glyph unicode="&#x270f;" d="M1011 1210q19 0 33 -13l153 -153q13 -14 13 -33t-13 -33l-99 -92l-214 214l95 96q13 14 32 14zM1013 800l-615 -614l-214 214l614 614zM317 96l-333 -112l110 335z" />
```

## CONVERT TO:

```
<svg width="1500px" height="1500px" version="1.1" xmlns="http://www.w3.org/2000/svg">
<path transform="scale(1, -1) translate(0, -1500)" unicode="&#x270f;" d="M1011 1210q19 0 33 -13l153 -153q13 -14 13 -33t-13 -33l-99 -92l-214 214l95 96q13 14 32 14zM1013 800l-615 -614l-214 214l614 614zM317 96l-333 -112l110 335z" />
</svg>
```

Inspired by: [Converting SVG fonts to... SVG](http://helpfulsheep.com/2015-03-25-converting-svg-fonts-to-svg/)