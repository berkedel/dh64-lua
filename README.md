# 64-bit Diffie-Hellman Key Exchange Algorithm in Lua

A security protocol to allow two parties exchange keys over an insecure channel.

## Usage

Randomly generate a pair of 64-bit private and public key

```lua
local dh64 = require "dh64"

local privKey1, pubKey1 = dh64.pairKey()
local privKey2, pubKey2 = dh64.pairKey()
```

After obtaining the public key above, pass it to the other party through the network. After two parties get each other's public key, they can use their own private key and the other's public key to calculate the secret key.

```lua
local secret1 = dh64.secret(privKey1, pubKey2)
local secret2 = dh64.secret(privKey2, pubKey1)
```

This secret key can be used for encryption algorithm such as RC4 to encrypt the content of the subsequent communication between the two parties.

## Advanced Usage

The default generation method using the pseudo-random function built into the language. In order to enchance security, use your own true randomness to generate the private key and then generate public key separately.

```lua
local myPrivKey = yourRandomKey() -- use your own function to generate priv key
local pubKey = dh64.pubKey(myPrivKey)
```
