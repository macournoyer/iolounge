#!/usr/bin/env io

Regex # Force loading of Addon

args := System args slice(1)
if(args size != 1,
  "usage: io goog.io <query>" println
  exit(1)
)

query := args first
content := URL clone with("http://www.google.ca/search?ie=utf-8&oe=utf-8&q=#{query}&num=5" interpolate) fetch

content matchesOfRegex("<h3 class=r><a href=\"(.*?)\" class=l>(.*?)</a>") foreach(match,
  "#{match at(1)}\n  #{match at(2)}" interpolate println
)
