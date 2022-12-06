using CSV, GLM, Plots, TypedTables
path = "data/CAR DETAILS FROM CAR DEKHO.csv"
cars = CSV.read(path, DataFrame)
describe(cars)
plot(x,y)
