#!/bin/bash

index_html=$(
cat <<EOF
<!DOCTYPE html>
<html>
   <head>
      <title>Hyrax Guide</title>
      <meta http-equiv="refresh" content ="0" url="./Master_Hyrax_Guide.html" />
   </head>
   <body>
      <p>Redirecting to another URL</p>
   </body>
</html>
EOF
)

cd output
cp -R ../images images
echo "${index_html}" | tee index.html
git init
git config user.name "The-Robot-Travis"
git config user.email "npotter@opendap.org"
git add .
git status
git commit -m "Deploying update to GitHub Pages"
git status
git push --force -v "https://$GIT_UID:$GIT_TOKEN@github.com/OPENDAP/hyrax_guide" master:gh-pages; echo $?
git status