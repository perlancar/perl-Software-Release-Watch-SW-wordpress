package Software::Release::Watch::SW::wordpress;

use 5.010;
use Moo;

with 'Software::Release::Watch::Source::WebPage::ArchiveLinks';
with 'Software::Release::Watch::Versioning::SemVer';

sub releases_url     { "http://wordpress.org/download/release-archive/" }
sub tarball_name_pat { qr!/-(?<v>.+)$! }

1;
# ABSTRACT: Watch wordpress releases

=cut
