#!/usr/bin/ruby
#
# @param {Integer} n
# @return {String[]}

def fizz_buzz(n)
  (1..n).map { |i|
    str = ""
    str+="Fizz" if i%3==0
    str+="Buzz" if i%5==0
    str =i.to_s if str.length==0
    str
  }
end

p fizz_buzz(10)
