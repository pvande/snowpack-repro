#!/bin/sh

yarn add snowpack tree-cli --silent --no-progress 1>&2 2>/dev/null

# @NOTE I'm using `yarn add link:…` here over `npm link` because my libraries
#       contain no `package.json files.
echo "********************************"
echo "** Testing Option 1: npm link **"
echo "********************************"
rm -rf public
yarn add link:./vendor/javascript/lib1 link:./vendor/javascript/lib2 --silent 1>&2 2>/dev/null
npx snowpack build
yarn remove lib1 lib2 --silent 1>&2 2>/dev/null

echo "Results:"
npx tree -l 10 -f --base public
echo "\e[38;5;240m// public/assets/app/javascript/main.js\e[0m"
cat public/assets/app/javascript/main.js
echo ''
echo "\e[38;5;240m// public/assets/web_modules/import-map.json\e[0m"
cat public/assets/web_modules/import-map.json
echo ''
echo ''


echo "*****************************"
echo "** Testing Option 2: Alias **"
echo "*****************************"
rm -rf public
npx snowpack build --config snowpack-alias.config.js

echo "Results:"
npx tree -l 10 -f --base public
echo "\e[38;5;240m// public/assets/app/javascript/main.js\e[0m"
cat public/assets/app/javascript/main.js
echo ''
echo ''


echo "*************************************"
echo "** Testing Option 3: Alias + Mount **"
echo "*************************************"
rm -rf public
npx snowpack build --config snowpack-alias-and-mount.config.js

echo "Results:"
npx tree -l 10 -f --base public
echo "\e[38;5;240m// public/assets/app/javascript/main.js\e[0m"
cat public/assets/app/javascript/main.js
echo ''
echo ''


echo "***************************************"
echo "** Testing Option 5: Symlink + Alias **"
echo "***************************************"
rm -rf public
ln -s ../../../vendor/javascript app/assets/javascript/vendor
npx snowpack build --config snowpack-symlink-and-alias.config.js
rm -f app/assets/javascript/vendor

echo "Results:"
npx tree -l 10 -f --base public
echo "\e[38;5;240m// public/assets/app/javascript/main.js\e[0m"
cat public/assets/app/javascript/main.js
