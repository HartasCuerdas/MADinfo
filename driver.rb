#!/usr/bin/ruby

load 'shot_csv.rb'
load 'shot_xml.rb'

FIELDS = 4

mode = ARGV[0]

month = ARGV[1]

filename = 'data/source/2013/' + month + '.txt'

if (mode == 'csv')
  shot_csv(filename)
else (mode == 'xml')
  shot_xml(filename, month)
end