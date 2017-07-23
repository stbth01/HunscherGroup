import pandas as pd

Multipliers = open('InflationMultipliers.txt').read()

mSplit = Multipliers.split()
lst=[]

#theFile = open('test.txt','w')
df = pd.DataFrame(columns=('Year','Value'))

for i in range(len(mSplit)):
    lst=[]
    try:
        lst = [mSplit[i*2], mSplit[(i*2)+1]]
        df.append(lst)
        print(lst)
        print(df)

    except:
        print("Out of Range")

print(df)

#theFile.write("%s\n" % out)
