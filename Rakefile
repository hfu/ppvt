task :default do
  sh "ruby create_ndjson.rb"
end

task :tippecanoe do
  sh "tippecanoe -o pp.mbtiles -f --layer=pp pp.ndjson"
end

