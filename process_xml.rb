load 'in_groups.rb'

require 'date'

def process_xml(data, month)

  data_size = data.count
  group_qty = data_size/FIELDS
  groups = data.in_groups(FIELDS)

  madvideos = groups[0]
  youtube_playlists = groups[1]
  dates = groups[2]
  titles = groups[3]

  puts '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'
  puts '<folders>'
  puts '  <folder>'

  headerDate = Date.strptime(month+'/01/2015', '%m/%d/%Y')
  puts '    <title>yt-dl ' + headerDate.strftime('%b') +'</title>'

  puts '    <snippets>'

  for i in 0..group_qty-1
    if ( youtube_playlists[i].strip != '.' )
      date = Date.strptime(dates[i].strip, '%m/%d/%Y')
      puts '      <snippet>'
      puts '        <title>' + date.strftime('%b %d') + '</title>'
      puts '        <content>youtube-dl -x --audio-format mp3 -o "' + date.strftime('%Y/%m/%d') + '/parte-%(playlist_index)s.%(ext)s" ' + youtube_playlists[i].strip + '</content>'
      puts '      </snippet>'
    end
  end

  puts '    </snippets>'
  puts '  </folder>'
  puts '</folders>'

end