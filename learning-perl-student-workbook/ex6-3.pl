#!/usr/bin/perl -w
use 5.010;

my %birthday = (
  Fred => 'April 5',
  Wilma => 'October 26',
  Pebbles => 'October 8',
);

say "Please input a name:";
chomp(my $name = <STDIN>);

if (exists $birthday{$name}) {
  say "The birthday of $name is $birthday{$name}.";
}
else {
  say "$name is not in the birthday hash.";
}
