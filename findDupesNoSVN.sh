#!/bin/bash

find -type d -name ".svn" -prune -o -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type d -name ".svn" -prune -o -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate
