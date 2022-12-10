import pandas as pd

rates_per_day = {'2022-01-01': 60, '2022-01-02': 61, '2022-01-03': 65}

df = pd.DataFrame([[rates_per_day]])
df.columns = ['rates_per_day']

df