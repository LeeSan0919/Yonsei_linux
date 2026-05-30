#!/usr/bin/perl

@words = ();
@order = ();

while ($line = <STDIN>) {
    chomp($line);

    $line =~ s/^[ \t]+//;
    $line =~ s/[ \t]+$//;

    if ($line eq "") {
        next;
    }

    push(@words, $line);
}

for ($i = 0; $i < @words; $i++) {
    $w = $words[$i];

    if (!exists $count{$w}) {
        $count{$w} = 1;
        push(@order, $w);
    }
    else {
        $count{$w} = $count{$w} + 1;
    }
}

print "Word\tCount\n";

for ($i = 0; $i < @order; $i++) {
    $w = $order[$i];
    print "$w\t$count{$w}\n";
}
