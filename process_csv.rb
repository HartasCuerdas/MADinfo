load 'in_groups.rb'

def process_csv(data)

  data_size = data.count
  group_qty = data_size/FIELDS
  groups = data.in_groups(FIELDS)

  madvideos = groups[0]
  youtube_playlists = groups[1]
  dates = groups[2]
  titles = groups[3]

  puts 'title,emitted,video,madvideo'
  for i in 0..group_qty-1
    chapter = []
    chapter << titles[i].strip
    chapter << dates[i].strip
    chapter << youtube_playlists[i].strip
    chapter << madvideos[i].strip
    puts chapter.join(',')
  end

end