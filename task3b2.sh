#!/bin/bash
# The following command-line Perl will be the fastest inplace conversion
# perl -i -pe 'print uc' bash/Zalora-*

# assuming we don't want to use Perl
for f in `ls bash/Zalora-*`
do
	dd if=$f of=/tmp/inter conv=ucase;
	mv /tmp/inter $f;
done;
# the dd command can be replaced with sed or tr
