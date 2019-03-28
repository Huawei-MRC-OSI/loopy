import pandas as pd

A=pd.read_csv('tests/polybench.csv', sep='\t')

A['Polly_Loopy_speedup'] = A['Polly_SEC'] / A['Loopy_SEC']
A['LLVM_Loopy_speedup'] = A['LLVM_SEC'] / A['Loopy_SEC']
A['Polly_LLVM_speedup'] = A['LLVM_SEC'] / A['Polly_SEC']
print(A)


flt=(A.index != 17) & (A.index != 19)
print('Mean polly speedup rate', ( A['LLVM_SEC'] / A['Polly_SEC'] )[flt].mean())
print('Mean loopy speedup rate', ( A['LLVM_SEC'] / A['Loopy_SEC'] )[flt].mean())
