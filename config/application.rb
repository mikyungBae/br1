# Bower asset paths
root.join('vendor', 'assets', 'bower_components').to_s.tap do |bower_path|
  config.sass.load_paths << bower_path
  config.assets.paths << bower_path
end
# Precompile Bootstrap fonts
config.assets.precompile << %r(bootstrap-sass/assets/fonts/bootstrap/[\w-]+\.(?:eot|svg|ttf|woff2?)$)
# Minimum Sass number precision required by bootstrap-sass
::Sass::Script::Value::Number.precision = [8, ::Sass::Script::Value::Number.precision].max