using DataFrames, CSV, GLM, Plots, CategoricalArrays, TypedTables, StatsPlots
cars=DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"))
describe(cars)
X1=round.(Int,cars.km_driven/1000); X2=cars.year; Y=round.(Int,cars.selling_price/1000);
# years_and_km_driven = @df cars scatterhist(X=[X1 X2],
#                                         # :km_driven,
#                                         # :selling_price,
#                                         Y,
#                                         ms=5,
#                                         ma=0.5,
#                                         lw=1,
#                                         title="Car selling prices - Ankur Satyarthi",
#                                         xlabel = "KM DRIVEN (In thousands)",
#                                         ylabel = "PRICE (In thousands of Rupees, ref: CarDekho)",
#                                         legend = false,
#                                         color = :skyblue)
t=Table(X1=X1, X2=X2, Y=Y); gr(size=(600,600))
plot_scatter = scatter(X1, X2, Y,
    ma=0.5,
    ms=5,
    xlims = (0, 850), # KM Driven
    ylims = (1992, 2022), # Years
    zlims = (20, 8900), # Selling Prices
    xlabel = "KM DRIVEN (In thousands)",
    ylabel = "YEARS",
    zlabel = "PRICE (In thousands of rupees, ref: CarDekho)",
    title = "Car selling prices - Ankur Satyarthi",
    legend = false,
    color = :teal
)
ols=lm(@formula(Y ~ X1),t)
