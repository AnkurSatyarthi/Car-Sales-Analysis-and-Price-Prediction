using CSV, GLM, Plots, TypedTables
path = "data/CAR DETAILS FROM CAR DEKHO.csv"
cars = CSV.read(path, DataFrame)

describe(cars)

x = cars.year
y = cars.selling_price
plot(x,y)
