use v5.38;
use Path::Tiny;

use constant URL => 'playstore';

my $file = path( 'out' ) -> openw;

my @apps = (
  { id1 => 'Name' } ,
  { id2 => 'Name2' }
);

for my $app ( @apps ) {
  for my ( $id , $name ) ( $app -> %* ) {
    say "$id: $name";
    $file -> say( "$id: $name" );
  }
}
