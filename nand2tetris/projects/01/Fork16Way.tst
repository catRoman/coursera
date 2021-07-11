//
// Unit testing for 16 way fork chip
//

load Fork16Way.hdl,
output-file Fork16Way.out,
compare-to Fork16Way.cmp,
output-list in out%B1.16.1;

set in 0,
eval,
output;

set in 1,
eval,
output;

