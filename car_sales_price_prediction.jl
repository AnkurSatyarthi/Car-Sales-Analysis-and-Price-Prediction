using DataFrames, CSV, GLM, Plots, TypedTables
cars = DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"))
describe(cars)
X = round.(Int, cars.km_driven / 1000)
# describe(X)
Y = round.(Int, cars.selling_price / 1000)
# describe(Y)
# years_and_km_driven = @df cars scatter(X,
#                                         # :km_driven,
#                                         # :selling_price,
#                                         Y,
#                                         ms=5,
#                                         ma=0.5,
#                                         title="Relationship between km driven and selling prices",
#                                         xlabel="km driven",
#                                         ylabel="selling_price")
t = Table(X = X, Y = Y)
gr(size = (600, 600))
plot_scatter = scatter(X, Y,
    xlims = (0, 850),
    ylims = (0, 8999),
    xlabel = "KM DRIVEN (In thousands)",
    ylabel = "PRICE (In thousands of dollars)",
    title = "Car selling prices",
    legend = false,
    color = :blue
)
ols = lm(@formula(Y ~ X), t)
plot!(X, predict(ols), color = :green, linewidth = 3)
new_X = Table(X = [277])
predict(ols, new_X)
epochs = 0
plot_scatter = scatter(X, Y,
    xlims = (0, 810),
    ylims = (0, 8900),
    xlabel = "KM DRIVEN (In thousands)",
    ylabel = "PRICE (In thousands of dollars)",
    title = "Car selling prices (epochs = $epochs)",
    legend = false,
    color = :blue
)
theta_0 = 0.0
theta_1 = 0.0
h(x) = theta_0 .+ theta_1 * x
plot!(X, h(X), color = :blue, linewidth = 3)
m = length(X)
y_hat = h(X)
function cost(X,Y)
    (1/(2*m))*sum((y_hat-Y).^2)
end
J=cost(X,Y)
J_history=[]
push!(J_history, J)
function pd_theta_0(X,Y)
    (1/m)*sum(y_hat-Y)
end
function pd_theta_1(X,Y)
    (1/m)*sum((y_hat-Y).*X)
end
# alpha_0=0.01
# alpha_1=0.01

# theta_0_temp = pd_theta_0(X,Y)
# theta_1_temp = pd_theta_1(X,Y)
# theta_0 -= alpha_0*theta_0_temp
# theta_1 -= alpha_1*theta_1_temp
# y_hat=h(X)
# J=cost(X,Y)

# push!(J_history, J)
# epochs+=1
# plot!(X,y_hat,color=:red,alpha=0.5,
#     title="Car Selling Prices (epochs = $epochs")

