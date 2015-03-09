#!/bin/bash
r="^(bash/)z(.+)"
for f in `ls bash/zalora-*`
do
	if [[ $f =~ $r ]]; then
		mv $f "${BASH_REMATCH[1]}Z${BASH_REMATCH[2]}";
	fi
done;

# it can be simpler if perl or util-linux package can be used
# if so, the following command will do it simply
# prename 's/z/Z/' bash/zalora-*
