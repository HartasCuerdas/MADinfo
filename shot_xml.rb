load 'process_xml.rb'

def shot_xml(filename, month)

  data = IO.readlines(filename)
  process_xml(data, month)
  puts ''

end