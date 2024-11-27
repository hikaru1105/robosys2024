#!/usr/bin/python3

import sys

x = int(sys.argv[1])
n = 0
i = 0
ans = 0

while x > 0:
    i = x % 2
    ans += i * (10 ** n)
    x = x // 2
    n += 1

print(ans)
