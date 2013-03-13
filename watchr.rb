watch('src/index.haml') { system('haml src/index.haml index.html') }
watch('src/style.scss') { system('sass src/style.scss style.css') }
watch('src/app.coffee') { system('coffee -c src/app.coffee && mv src/app.js app.js') }
