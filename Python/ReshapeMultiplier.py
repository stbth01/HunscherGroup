import pandas as pd
import csv

Multipliers = open('InflationMultipliers.txt').read()

mSplit = Multipliers.split()


#theFile = open('test.txt','w')
df = pd.DataFrame(columns=('Year','Value'))

for i in range(len(mSplit)):

    try:
        df.loc[i] = [mSplit[i*2], mSplit[(i*2)+1]]
        print('data frame: ',df)

    except:
        print("Out of Range")

writer = pd.ExcelWriter('InflationMultiplers_output.xlsx')
df.to_excel(writer,'Sheet1')
writer.save()
