package Software::Release::Watch::SW::wordpress;

use 5.010;
use Moo;

# VERSION

with 'Software::Release::Watch::Source::WebPage::ArchiveLinks';
with 'Software::Release::Watch::Versioning::SemVer';
with 'Software::Release::Watch::Software';

sub url { "http://wordpress.org/download/release-archive/" }

sub filter_filename {
    my ($self, $fn) = @_;
    $fn =~ /^wordpress-(?=\d)/o;
}


1;
# ABSTRACT: Watch wordpress releases

=cut

=for Pod::Coverage .+
