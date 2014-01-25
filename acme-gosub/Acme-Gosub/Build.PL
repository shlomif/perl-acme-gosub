use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    'module_name' => "Acme::Gosub",
    dist_author => 'Shlomi Fish <shlomif@cpan.org>',
    'requires' =>
    {
        perl => '5.008',
        'Filter::Util::Call' => 0,
        'Text::Balanced' => 0,
    },
    build_requires =>
    {
        "Test::More" => 0,
    },
    'license' => "perl",
    create_makefile_pl => "traditional",
    meta_merge =>
    {
        resources =>
        {
            repository => "https://svn.berlios.de/svnroot/repos/web-cpan/Acme-Gosub/",
        },
        keywords =>
        [
            "Acme",
            "BASIC",
            "black magick",
            "gosub",
            "joke",
            "retro",
            "source filter",
            "subroutine",
        ],
    },

);
$build->create_build_script;

