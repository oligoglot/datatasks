#!/bin/bash
# The following command-line Perl will be the fastest inplace conversion
# perl -i -pe 's/\.//g' bash/Zalora-*

# assuming we don't want to use Perl
for f in `ls bash/Zalora-*`
do
	sed -e 's/\.//g' $f > /tmp/inter
	mv /tmp/inter $f;
done;
