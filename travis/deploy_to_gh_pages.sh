#!/bin/bash


GUIDE_FILE="Master_Hyrax_Guide.html"
echo "GUIDE_FILE: ${GUIDE_FILE}"

GUIDE_VERSION=`cat VERSION`"-${TRAVIS_BUILD_NUMBER}"
echo "GUIDE_VERSION: ${GUIDE_VERSION}"

index_html=$(
cat <<EOF
<!DOCTYPE html>
<html>
   <head>
      <title>Hyrax Guide ${GUIDE_VERSION}</title>
      <meta http-equiv="refresh" content ="0; url=${GUIDE_FILE}" />
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

cat ${GUIDE_FILE} | sed -e "s/GUIDE_VERSION_TEMPLATE/${GUIDE_VERSION}/g" > foo
mv -f foo ${GUIDE_FILE}
head -25 ${GUIDE_FILE}

# Now we set up the git repo
git config user.name "The-Robot-Travis"
git config user.email "npotter@opendap.org"

# Add and commit the content
git add .
git status
git commit -m "COMMIT Deploying update to GitHub Pages"
git status
# Push to GitHub Pages
git push --force -v "https://${GIT_UID}:${GIT_TOKEN}@github.com/OPENDAP/hyrax_guide" master:gh-pages; echo $?
git status