task :default => :compile

task :compile do
  sh 'haml src/index.haml index.html'
  sh 'sass src/style.scss style.css'
  sh 'coffee -c src/app.coffee'
  sh 'mv src/app.js app.js'

  puts "Done!"
end
