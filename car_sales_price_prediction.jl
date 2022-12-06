using CSV, DataFrames, MLJ, Plots, TypedTables

cars = CSV.read("data/CAR DETAILS FROM CAR DEKHO.csv",DataFrame)
# cars

# describe(cars)

# x = cars.year
# y = cars.selling_price
# plot(x,y)

# models(matching(x,y))

# plots_heatmap(cars.selling_price)

