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
plot()
plot(4)
plot(rand(10))
plot(rand(10,5))
plot(rand(10),rand(10))
plot(rand(10,5), rand(10))
plot(sin, rand(10))
plot(rand(10),sin)
plot([sin,cos],0:0,1:pi)
plot([sin,cos],0,pi)
plot(1:10, Any[rand(10),sin])
plot(title="title",
    xlabel="xlabel",
    ylabel="ylabel")
plot!(xlims=(0,5.5),
    ylims=(-2.2,6),
    xticks=0:0.5:10,
    yticks=[0,1,5,10])
X1 = cars.year
Y1 = cars.selling_price
plot(title="Relationship between years and selling prices",
    xlabel="years",
    ylabel="selling prices")
x = range(0,10,length=100)
y = sin.(x)
plot(x,y)
plot(X,Y)
x = range(0,10,length=100)
y1 = sin.(x)
y2 = cos.(x)
plot(x,[y1,y2])
Y2 = cars.km_driven
plot(X1, [Y1,Y2])
plot(cars.owner,[cars.fuel])
rsbysp = scatter(cars.year,cars.selling_price)
savefig("Output/myplot.png")
savefig(rsbysp, "Output/myplot.pdf")



