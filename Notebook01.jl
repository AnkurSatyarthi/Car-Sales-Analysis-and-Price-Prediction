using DataFrames, CSV, GLM, Plots, TypedTables
# cars = CSV.File("CAR DETAILS FROM CAR DEKHO.csv")
cars = CSV.read("CAR DETAILS FROM CAR DEKHO.csv",DataFrame)
describe(cars)
x = cars.year
y = cars.selling_price
