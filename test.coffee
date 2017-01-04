import {compile as coffeeCompile} from 'coffee-script'

export class CoffeeTest
  constructor: (@message) ->
  go: (count) ->
    console.log 'go'
    out = ""
    for i in [1..count]
      out += "#{@message} #{i}! "
    test = coffeeCompile("[1..3]", bare: true)
    out += if test == "[1, 2, 3];\n" then "passed" else "failed"
    return out
