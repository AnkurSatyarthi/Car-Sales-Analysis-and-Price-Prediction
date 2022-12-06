using CSV, GLM, Plots, TypedTables
cars = CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv")
# Relationship b/w years and selling prices
years_and_selling_prices = scatter(cars.year,cars.selling_price)
Plots.pdf(years_and_selling_prices, "Output/pdf/years_and_selling_prices")
# Relationship b/w years and km drivens
years_and_km_driven = scatter(cars.year,cars.km_driven)
Plots.pdf(years_and_km_driven, "Output/pdf/years_and_km_driven")