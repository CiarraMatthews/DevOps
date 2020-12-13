import pandas as pd

df = pd.read_csv('pokemon_data.csv') #Object create and csv file read into it
#df = pd.read_excel('') # Here's the method used if data is in excel or text file

#print(df.head(217))
print(df)
#print(df.columns) #prints columns names

#df['Total'] = df['HP'] + df['Attack'] + df['Defense'] + df['Sp. Atk'] + df['Sp. Def'] + df['Speed']
df['Total'] = df.iloc[:, 4:9].sum(axis=1)
#print(df[['Name', 'Type 1', 'Speed']]) #prints data only for these fields

#prints the top 5 by defualt. Add parameter to change that
#print(df.head())
primary_darktypes = df.loc[df['Type 1'] == 'Dark']
print(primary_darktypes.describe())
fastest_darktype = primary_darktypes.sort_values(['Speed'], ascending=True)
print(df['Attack'].mean())
print(fastest_darktype)
prima
