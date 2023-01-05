using DataFrames, CSV, GLM, Plots, TypedTables, StatsPlots
cars = DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"))
cars = CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv")
# Relationship b/w years and selling prices
years_and_selling_prices = scatter(cars.year,cars.selling_price)
# Relationship b/w years and km drivens
years_and_km_driven = scatter(cars.year,cars.km_driven)
x = cars.year
y = cars.selling_price
describe(cars)
X = cars.km_driven
Y = cars.selling_price
vscodedisplay(cars)
plot(X,Y)
# plot(x,Y,resolution=(2000,2000))
scatter(x,Y,ms=5,ma=0.5,title="Relationship between km driven and selling prices",lw=1,xlabel="km driven",ylabel="selling price")
a=:x
b = :Y
@df cars plot(:Y)
@df cars scatter(x,Y)
df = DataFrame(a=1:100,b=100*rand(100),c=100*rand(100))
@df df plot(:a, [:b, :c])
@df df scatter(:a,:b,title="plot title")
@df cars corrplot(cols(2:3),grid=false)