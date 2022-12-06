using DataFrames, CSV, GLM, Plots, TypedTables
# cars = CSV.File("CAR DETAILS FROM CAR DEKHO.csv")
cars = CSV.read("data/CAR DETAILS FROM CAR DEKHO.csv",DataFrame)
describe(cars)
selling_prices = cars.selling_price
years = cars.year
km_driven = cars.km_driven
cars[1:5, [:name, :year, :selling_price, :fuel]]
cars[1:5,:]
cars[[1,6,15], :]
cars[:,[:name,:year]]
cars[!,[:year, :selling_price]]
view(cars, :, 2:5)
@view cars[end:-1:1, [1, 4]]
@view cars[1:5, 1]
@view cars[2,2]
@view cars[3, 2:5]
using BenchmarkTools
@btime $cars[1:end-1, 1:end-1];
@btime @view $cars[1:end-1, 1:end-1];
cars[:, Not(:name)]
cars
cars[:,Between(:year,:km_driven)]
cars[:,Cols("name", Between("fuel","owner"))]
using Statistics
println("_____")
