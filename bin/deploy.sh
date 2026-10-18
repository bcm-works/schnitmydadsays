#!/usr/bin/env bash
#
#
# Deploy the site to Sourcehut Pages
#  - More info at https://srht.site/quickstart/ and https://srht.site/custom-domains/
#  - Requires the Sourcehut CLI from https://git.sr.ht/~xenrox/hut
#
#

REPO="$(cd "$(dirname "$0")/.." && pwd)"

cd "$REPO"

SITE_URL="bcm.srht.site" # "$(cat "$REPO/CNAME")" || "bcm.srht.site"

hut pages publish -d "$SITE_URL" "$REPO/build/schnitmydadsays.tar.gz"

