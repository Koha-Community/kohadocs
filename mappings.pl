use Modern::Perl;
use File::Slurp;

my @files = @ARGV;
my ( $mapping_anchors, $mapping_titles );

for my $file ( @files ) {
    my $content = read_file( $file );
    for my $line ( split "\n", $content ) {
        chomp $line;
        if ( $line =~ m|^`(?<title>.*)<#(?<old_anchor>.*)>`__$| ) {
            my $old_anchor = $+{old_anchor};
            my $title = $+{title};
            my $new_anchor = lc $title;
            $new_anchor =~ s|\s+$||;
            $new_anchor =~ s|\s|-|g;
            $new_anchor .= '-label';
            $title =~ s|\s+$||;
            say "$title + $old_anchor = $new_anchor";
            $mapping_anchors->{$old_anchor} = { new_anchor => $new_anchor, title => $title };
            $mapping_titles->{$title} = { new_anchor => $new_anchor, old_anchor => $old_anchor };
        }
    }
}

#   -`Currencies and Exchange Rates <#currexchangeadmin>`__
#   +.. _currexchangeadmin:
#   +
#   +Currencies and Exchange Rates
#
#   -      -  Currencies are assigned in the `Currencies & Exchange
#   -         Rates <#currexchangeadmin>`__ admin area
#   +      -  Currencies are assigned in the :ref:`Currencies & Exchange
#   +         Rates <currexchangeadmin>` admin area

for my $file ( @files ) {
    my $content = read_file( $file );
    for my $old_anchor ( keys %$mapping_anchors ) {
        my $new_anchor = $mapping_anchors->{$old_anchor}{new_anchor};
        my $title = $mapping_anchors->{$old_anchor}{title};
        $content =~ s|\n`([^`]+)\s<#$old_anchor>`__\n([\Q~=-'^\E]+)\n|\n.. _$new_anchor:\n\n$1\n$2\n|g; # Header titles, add a reference label (same as would have been the default one)
        $content =~ s|\n`$title`\n([~=-^']+)\n|\n.. _$new_anchor:\n\n$title\n$1\n|g; # Header titles that have already been fixed
        $content =~ s|`$title\s<#$old_anchor>`__|:ref:`$title`|g; #If link title is the same as the header title, remove the header title
        $content =~ s|`([^`]+)\s<#$old_anchor>`__|:ref:`$1 <$new_anchor>`|g; # If link is different that header title
    }
    write_file($file, $content);
}

