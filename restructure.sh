#!/bin/sh

set -e

iteratedir() {
    for d in */;do
        [ "${d}" = "*/" ] && continue
        
        echo "In directory ${d}."
        dn="${d%/}"
        if [ -f "${dn}.md" ]; then
            echo git mv "${dn}".md "${dn}/index.md"
            git mv "${dn}".md "${dn}/index.md"
        fi

        cd "${d}"
        iteratedir
        cd ..
    done
}

iteratedir