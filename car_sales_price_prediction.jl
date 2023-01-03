using GR, CSV, GLM, Plots, TypedTables
cars = DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"))
describe(cars)
X = cars.km_driven
Y = cars.selling_price
gr(size(600,600))