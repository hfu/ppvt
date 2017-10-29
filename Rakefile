task :default do
  sh "ruby create_ndjson.rb"
end

task :tippecanoe do
  sh "tippecanoe -o pp.mbtiles -f --read-parallel --layer=pp --maximum-zoom=13 --base-zoom=13 pp.ndjson"
end

task :fan_out do
  sh "ruby fan-out.rb"
end
