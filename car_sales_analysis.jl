using CSV, GLM, Plots, TypedTables
cars = DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"))
# cars = CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv")
# Relationship b/w years and selling prices
years_and_selling_prices = scatter()
# Relationship b/w years and km drivens
