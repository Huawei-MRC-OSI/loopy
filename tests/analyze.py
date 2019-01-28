import pandas as pd

A=pd.read_csv('tests/polybench.log', sep='\t')
print(A)

flt=(A.index != 17) & (A.index != 19)

print('Polly speedup rate', ( A['LLVM_SEC'] / A['Polly_SEC'] )[flt].mean())
print('Loopy speedup rate', ( A['LLVM_SEC'] / A['Loopy_SEC'] )[flt].mean())
