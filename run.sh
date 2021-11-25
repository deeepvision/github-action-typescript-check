#!/bin/sh

set -e

echo ""

echo "Install packages"
npm install

echo "Build Typecript"
npm run build

echo "Lint code"
npm run lint
