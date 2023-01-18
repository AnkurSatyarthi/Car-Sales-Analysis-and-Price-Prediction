using DataFrames, CSV, GLM, Plots, CategoricalArrays, TypedTables, StatsPlots
cars=DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"));size(cars);names(cars);first(cars,5);describe(cars);describe(cars,:all);describe(cars,:all,cols=:selling_price)
X=round.(Int,cars.km_driven/1000);Y=round.(Int,cars.selling_price/1000);years_and_km_driven=@df cars scatter(X,Y,ms=5,ma=0.5,lw=1,title="Car selling prices - Ankur Satyarthi",xlabel="KM DRIVEN (In thousands)",legend=false,
ylabel="PRICE (In thousands of Rupees, ref: CarDekho)",color=:skyblue)