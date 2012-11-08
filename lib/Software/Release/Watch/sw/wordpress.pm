package Software::Release::Watch::sw::wordpress;

use 5.010;
use Moo;

with 'Software::Release::Watch::Software';
with 'Software::Release::Watch::HasReleasesInURL';

sub releases_url     { "http://wordpress.org/download/release-archive/" }
sub tarball_name_pat { qr!/-(?<v>.+)$! }

1;
# ABSTRACT: Watch wordpress releases

=head1 SYNOPSIS

 use Software::Release::Watch qw(list_software_releases);

 my $res = list_software_releases(software_id=>'wordpress');

=cut
