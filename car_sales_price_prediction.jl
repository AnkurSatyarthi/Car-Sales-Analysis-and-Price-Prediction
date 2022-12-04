using CSV, DataFrames, MLJ, Plots

cars = CSV.read("data/CAR DETAILS FROM CAR DEKHO.csv",DataFrame)
cars

describe(cars)

