using CSV, DataFrames, GLM, Plots, TypedTables
path = "data/CAR DETAILS FROM CAR DEKHO.csv"
cars = CSV.read(path, DataFrame)
# cars

# describe(cars)

# x = cars.year
# y = cars.selling_price
# plot(x,y)

# models(matching(x,y))

# plots_heatmap(cars.selling_price)

