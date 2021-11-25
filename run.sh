#!/bin/sh

set -e

echo ""

if [[ ! -z "${INPUT_NPMAUTHTOKEN}" ]]; then
  echo "@deeepvision:registry=https://npm.pkg.github.com" >> .npmrc
  echo "//npm.pkg.github.com/:_authToken=${INPUT_NPMAUTHTOKEN}" >> .npmrc
fi

echo "Install packages"
npm install

echo "Build Typecript"
npm run build

echo "Lint code"
npm run lint
