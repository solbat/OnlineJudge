N=int(input())
num = [1, 2, 3, 4, 5, 6, 7, 8, 9
]
for x in num:
    result=N*x
    print(f"{N} * {x} = {result}")

# a=b=int(input())
# exec("print(a,*f'*{b//a}=',b);b+=a;"*9)