using CSV, DataFrames, TypedTables, GLM, Plots, StatsPlot
begin
    cars=DataFrame(CSV.File("data/CAR DETAILS FROM CAR DEKHO.csv"));names(cars);describe(cars);X=round.(Int,cars.selling_price/1000);Y=cars.year;t=Table(X=X,Y=Y);gr(size=(600,600));
    plot_scatter=scatter(X,Y,xlims=(0,8900),ylims=(1992,2020),xlabel="Selling Prices(in Thousands",ylabel="Years",title="Years Analysis",legend=false,color=:black)
    ols=lm(@formula(Y~X),t);plot!(X,predict(ols),color=:red,linewidth=3);new_X=Table(X=[543]);predict(ols,new_X)
end