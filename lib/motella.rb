unless defined?(Motion::Project::Config)
  raise "Motella must be required within a RubyMotion project Rakefile."
end

LIB_DIR = File.dirname(__FILE__)
Motion::Project::App.setup do |app|
  Dir.glob(File.join( LIB_DIR, %w(motella ** *.rb))).each do |file|
    app.files.unshift(file)
  end
  # FileUtils.cp( File.join( LIB_DIR, %w(assets motella.ttf) ), './resources/' )
  # FileUtils.cp( File.join( LIB_DIR, %w(assets motella.plist) ), './resources/' )
  app.fonts << "motella.ttf"
end
