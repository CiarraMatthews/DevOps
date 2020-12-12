import pandas as pd
dataset = pd.read_csv('pokemon_data.csv')
#df = pd.read_excel('pokemon_data.csv')
#print(df.head(217))
#print(df)
#print(df.columns) #prints columns names


print(dataset[['Name', 'Type 1', 'Speed']]) #prints the names of objects

#prints the top 5 by defualt. Add parameter to change that
#print(df.head())
