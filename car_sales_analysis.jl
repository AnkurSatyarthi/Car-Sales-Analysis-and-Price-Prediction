using CSV, GLM, Plots, TypedTables
cars = DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"))
# cars = CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv")
# Relationship b/w years and selling prices
years_and_selling_prices = scatter(cars.year,cars.selling_price)
# Relationship b/w years and km drivens


x = cars.year
y = cars.selling_price

describe(cars)
X = cars.km_driven
Y = cars.selling_price
