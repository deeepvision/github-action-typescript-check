#!/bin/sh

set -e

echo ""

if [[ -z "${GITHUB_TOKEN}" ]]; then
  echo "@deeepvision:registry=https://npm.pkg.github.com" >> .npmrc
  echo "//npm.pkg.github.com/:_authToken=${GITHUB_TOKEN}" >> .npmrc
fi

echo "Install packages"
npm install

echo "Build Typecript"
npm run build

echo "Lint code"
npm run lint
