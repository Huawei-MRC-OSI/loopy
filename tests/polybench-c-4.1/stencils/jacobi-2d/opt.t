affine(LoopA, {[t, i, j] -> [t, i+1, j]})
realign(LoopB, LoopA, 3)
affine(EX, { [t, i, j] -> [t, i1, j1, i2, j2]: i1 = [i/32] and i2 = i%32 and j1 = [j/32] and j2 = j%32} )
//Loop = lift(LoopA, 3)
//L = lift(LoopA, 4)
//affine(L, { [t, i, j, k] -> [t, i, j1, k1, j2, k2]: k1 = [k/32] and k2 = k%32 and j1 = [j/32] and j2 = j%32} )
//L = lift(Left, 3)
//affine(L, {[i, j, k] -> [i, k, j]})
//affine(EY, { [t, i, j] -> [t, i1, j1, i2, j2]: i1 = [i/32] and i2 = i%32 and j1 = [j/32] and j2 = j%32} )
//affine(HZ, { [t, i, j] -> [t, i1, j1, i2, j2]: i1 = [i/32] and i2 = i%32 and j1 = [j/32] and j2 = j%32} )
