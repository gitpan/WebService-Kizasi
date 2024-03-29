use strict;
use Test::Base tests => 9;

use WebService::Kizasi;

my $kizapi = WebService::Kizasi->new();
ok $kizapi;

my $result = $kizapi->ranking_1w;
isa_ok $result->items, 'ARRAY';
ok( scalar( @{ $result->items } ) <= 30 );

isa_ok $result->items->[0], 'HASH';

ok $result->items->[0]->title;
ok $result->items->[0]->pubDate;
ok $result->items->[0]->link;
ok $result->items->[0]->guid;
ok $result->items->[0]->description;
