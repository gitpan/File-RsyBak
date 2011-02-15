
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Module::Build' => '0.3601'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Backup files/directories with histories, using rsync',
  'dist_author' => [
    'Steven Haryanto <stevenharyanto@gmail.com>'
  ],
  'dist_name' => 'File-RsyBak',
  'dist_version' => '0.10',
  'license' => 'perl',
  'module_name' => 'File::RsyBak',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'File::Flock' => '0',
    'File::Path' => '2.08',
    'File::Slurp' => '0',
    'File::Which' => '0',
    'File::chdir' => '0',
    'Log::Any' => '0',
    'Log::Any::App' => '0',
    'String::ShellQuote' => '0',
    'Sub::Spec::CmdLine' => '0.02',
    'Taint::Util' => '0',
    'perl' => '5.010000'
  },
  'script_files' => [
    'bin/rsybak'
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
