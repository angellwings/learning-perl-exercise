#!/usr/bin/perl -w
use strict;

foreach my $file ( glob('*') ) {
    my ( $atime, $mtime ) = map {
        my ( $year, $month, $day ) = ( localtime($_) )[ 5, 4, 3 ];
        $year += 1900;
        $month++;
        sprintf '%4d-%02d-%02d', $year, $month, $day;
    } ( stat $file )[ 8, 9 ];
    printf "%-20s %10s %10s\n", $file, $atime, $mtime;
}
