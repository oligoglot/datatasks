use strict;
my %c = {};
# can do the whole thing in a long command-line script, but readability will suffer
while (<>) {
    chomp;
    if (/^"\[(.+)\]"$/) {
        my @brands = split /,/, $1;
        foreach my $brand (@brands) {
            $c{$brand}++;
        }
    }
}

# sorting in descending order to show frequent brands first
print join( "\n", map { "$_,$c{$_}" } sort { $c{$b} <=> $c{$a} } keys %c );
