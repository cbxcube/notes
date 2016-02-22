#!/usr/bin/perl -w

@planet = qw(mercury venus earth mars);

# Remove 0 - 1
@hot = splice(@planet, 0, 2);
print "\@planet = @planet\n";
print "Line 8: \@hot = @hot\n";

# Swap venus for mars
splice(@hot, 1, 1, "mars");
print "Line 12: \@hot = @hot\n";

# Add venus and earth at position 1
splice(@hot, 1, 0, qw(venus earth));
print "Line 16: \@hot = @hot\n";
