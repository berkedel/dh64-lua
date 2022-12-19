local dh64 = require "dh64"
local priv1, pub1 = dh64.pairKey()
print(priv1, pub1)
local priv2, pub2 = dh64.pairKey()
print(priv2, pub2)
local s1 = dh64.secret(priv1, pub2)
local s2 = dh64.secret(priv2, pub1)
print(s1, s2)
assert(s1 == s2, "Both secrets should be equal")