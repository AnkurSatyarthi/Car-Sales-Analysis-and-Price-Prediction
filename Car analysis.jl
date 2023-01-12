using DataFrames, CSV, GLM, Plots, TypedTables, StatsPlots
cars = DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"))
# cars = CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv")
describe(cars)
first(cars,5)
last(cars,5)
year = cars.year
selling_price = cars.selling_price
km_driven = cars.km_driven
# Relationship b/w years and selling prices
# years_and_selling_prices = scatter(cars.year,cars.selling_price)
# Relationship b/w years and km drivens
years_and_km_driven = @df cars scatter(x=cars.km_driven,
                                        :km_driven,
                                        :selling_price,
                                        y=cars.selling_price,
                                        ms=5,
                                        ma=0.5,
                                        title="Relationship between km driven and selling prices",
                                        xlabel="km driven",
                                        ylabel="selling_price")
# vscodedisplay(cars)
scatter(x,Y,ms=5,ma=0.5,title="Relationship between km driven and selling prices",lw=1,xlabel="km driven",ylabel="selling price")
@df cars plot(:selling_price)
# kmyrsprp=@df cars corrplot(cols(2:4),grid=false)
kmyrsprp=@df cars corrplot(cols(3:4),grid=false,title="selling_price and ")
save("km_driven,selling_price, and rp.svg",kmyrsprp)
save("km_driven,selling_price, and rp.pdf",kmyrsprp)
