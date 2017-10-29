require 'find'
require 'json'

w = File.open('pp.ndjson', 'w')
Find.find('/tmp/pp/14') {|path|
  next unless path.end_with?('geojson')
  json = JSON.parse(File.read(path, mode: 'rb:BOM|UTF-8'))
  json['features'].each {|f|
    w.print JSON.dump(f)
  }
}
w.close
