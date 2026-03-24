#!/bin/bash

BASE="/"

echo "Creating structure under $BASE ..."

# Root-level directories
mkdir -p "${BASE}"{home,dir1,dir2,dir3,dir4,dir5,dir6,dir7,dir8,opt}

# Root files
touch "${BASE}"f1 "${BASE}"f2

# home → f1
touch "${BASE}home/f1"

# dir2 → nested structure
mkdir -p "${BASE}dir2/dir1/dir2/dir10"
touch "${BASE}dir2/dir1/dir2/f3"

# dir3 → dir11
mkdir -p "${BASE}dir3/dir11"

# dir4 → dir12 → f4, f5
mkdir -p "${BASE}dir4/dir12"
touch "${BASE}dir4/dir12/f4" "${BASE}dir4/dir12/f5"

# dir5 → dir13
mkdir -p "${BASE}dir5/dir13"

# dir7 → dir10 → f3
mkdir -p "${BASE}dir7/dir10"
touch "${BASE}dir7/f3"

# dir8 → dir9
mkdir -p "${BASE}dir8/dir9"

# opt → dir14 → dir10 → f3
mkdir -p "${BASE}opt/dir14/dir10"
touch "${BASE}opt/dir14/f3"

echo "✅ Structure created/verified successfully under /"