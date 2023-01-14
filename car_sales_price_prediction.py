import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
# import sklearn as sk
cars=pd.read_csv("data/CAR DETAILS FROM CAR DEKHO.csv")
cars.describe();cars.head()
cars.plot(kind='scatter',x='km_driven',y='selling_price')