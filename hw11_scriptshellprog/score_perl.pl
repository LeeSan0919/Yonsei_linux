#!/usr/bin/perl

sub print_line {
    my ($id, $name, $scores_ref, $total, $avg) = @_;

    printf "%-8s %-8s", $id, $name;

    foreach my $s (@$scores_ref) {
        printf "%5d", $s;
    }

    printf "%5d %5.1f\n", $total, $avg;
}

if (@ARGV != 1) {
    die "usage: $0 scorefile\n";
}

$scorefile = $ARGV[0];

open(FP, $scorefile) || die "cannot open $scorefile\n";
@lines = <FP>;
close(FP);

chomp(@lines);

@title = split(/[ \t]+/, $lines[0]);
$subject_count = @title - 2;

printf "%-8s %-8s", $title[0], $title[1];

for ($i = 2; $i < @title; $i++) {
    printf "%5s", $title[$i];
}

printf "%5s %5s\n", "총점", "평균";

$student_count = 0;

for ($row = 1; $row < @lines; $row++) {
    if ($lines[$row] eq "") {
        next;
    }

    @field = split(/[ \t]+/, $lines[$row]);

    $id = $field[0];
    $name = $field[1];

    @scores = ();
    $total = 0;

    for ($i = 2; $i < @field; $i++) {
        push(@scores, $field[$i]);
        $total += $field[$i];
        $subject_sum[$i - 2] += $field[$i];
    }

    $avg = $total / $subject_count;
    $student_count++;

    print_line($id, $name, \@scores, $total, $avg);
}

printf "%-8s %-8s", "", "과목평균";

for ($i = 0; $i < $subject_count; $i++) {
    printf "%5.1f", $subject_sum[$i] / $student_count;
}

printf "\n";
