cap_version = '%02d%02d%02d' % Capistrano::VERSION.scan(/\d+/)

if cap_verson < '030700'
  load File.expand_path('../tasks/copy.rake', __FILE__)
else
  # Capistrano 3.7.0 and later
  load File.expand_path('../copy-037.rb', __FILE__)
end
