load 'process_csv.rb'

def shot_csv(filename)

  data = IO.readlines(filename)
  process_csv(data)
  puts ''

end