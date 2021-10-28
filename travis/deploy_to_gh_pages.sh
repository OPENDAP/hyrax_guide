#!/bin/bash
VERSION=`cat VERSION`"-${TRAVIS_BUILD_NUMBER}"
echo "VERSION: ${VERSION}"

index_html=$(
cat <<EOF
<!DOCTYPE html>
<html>
   <head>
      <title>Hyrax Guide</title>
      <meta http-equiv="refresh" content ="0; url=Master_Hyrax_Guide.html" />
   </head>
   <body>
      <p>Redirecting to Master_Hyrax_Guide.html</p>
   </body>
</html>
EOF
)

cd output
cp -R ../images images

# GitHub Pages requires an functional index.html file.
# Here we add an index.html that redirects to Master_Hyrax_Guide.html
echo "${index_html}" | tee index.html

# Now we set up the git repo
git config user.name "The-Robot-Travis"
git config user.email "npotter@opendap.org"

# Add and commit the content
git add .
git status
git commit -m "Deploying update to GitHub Pages"
git status
# Push to GitHub Pages
git push --force -v "https://$GIT_UID:$GIT_TOKEN@github.com/OPENDAP/hyrax_guide" master:gh-pages; echo $?
git status