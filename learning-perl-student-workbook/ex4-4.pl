#!/usr/bin/perl -w
use strict;

sub show_args {
  print "The arguments are @_\n";
}

sub show_args_again {
  print "The arguments are @_\n";
  show_args reverse @_;
}

show_args_again( 'fred', 'barney', 'betty' );
