#!/bin/sh

yarn add snowpack tree-cli --silent --no-progress 1>&2 2>/dev/null

echo "****************************"
echo "** Testing CSS Inclusions **"
echo "****************************"
rm -rf public
npx snowpack build --config snowpack.config.js

echo "Results:"
npx tree -l 10 -f --base public
echo "\e[38;5;240m// public/assets/app/javascript/component/index.js\e[0m"
cat public/assets/app/javascript/component/index.js
echo ''
echo "\e[38;5;240m// public/assets/app/javascript/component/style.module.css\e[0m"
cat public/assets/app/javascript/component/style.module.css
echo ''
echo "\e[38;5;240m// public/assets/app/javascript/css/main.css\e[0m"
cat public/assets/app/javascript/css/main.css
echo ''
echo "\e[38;5;240m// public/assets/app/javascript/css/req1.css\e[0m"
cat public/assets/app/javascript/css/req1.css
echo ''
echo "\e[38;5;240m// public/assets/app/stylesheets/app.css\e[0m"
cat public/assets/app/stylesheets/app.css
echo ''
echo "\e[38;5;240m// public/assets/app/stylesheets/req1.css\e[0m"
cat public/assets/app/stylesheets/req1.css
