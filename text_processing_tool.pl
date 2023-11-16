# Text Processing Tool in Perl

use strict;
use warnings;

# File paths
my $input_file = 'filename.txt';     # Replace with your input file path
my $output_file = 'project 1.txt';   # Replace with your output file path

# Check if input file exists
if (-e $input_file) {
    open(my $fh_in, '<', $input_file) or die "Cannot open file '$input_file' for reading: $!";

    # Read content from input file
    my $content = do { local $/; <$fh_in> };

    # Transform text (e.g., converting text to uppercase)
    $content = uc $content;  # Change this line for different text transformations

    # Close input file
    close $fh_in;

    # Write transformed content to output file
    open(my $fh_out, '>', $output_file) or die "Cannot open file '$output_file' for writing: $!";
    print $fh_out $content;
    close $fh_out;

    print "Text processing completed. Output saved to '$output_file'.\n";
} else {
    die "Input file '$input_file' does not exist.";
}

