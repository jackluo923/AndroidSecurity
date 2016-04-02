#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
use File::Basename;
use Data::Dumper;

my $dex_path = "../dex2jar/dex2jar-2.0/d2j-dex2jar.sh";
my $apktool_path = "java -jar ../apktool/apktool.jar d -f ";
my $dirs  = 'find . -type f |grep \.apk$';
my @jardirs = `$dirs`;
foreach my $jar (@jardirs) {
    chomp $jar;
    my $dir = dirname($jar);
    my $file = basename($jar);
    # say $file;
    my $command1 = "$apktool_path $file -o apk; unzip -p $file classes.dex > apk/classes.dex"; # -o meansf orce overwrite
    my $command2 = "$dex_path ./apk/classes.dex  -o ./apk/classes.jar";
    `cd $dir && $command1 &&  $command2 && cd -`;
}
