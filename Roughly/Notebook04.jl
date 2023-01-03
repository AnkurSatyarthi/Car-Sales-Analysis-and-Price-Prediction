using DelimitedFiles, GR, Plots, DataFrames, CSV, Makie, PyPlot, GLM, MLJ, TypedTables
employee = DataFrame("employee"=>["Ronny","Mike","Michale","Robin","Mini","Mike","Roxy"],
            "occupation"=>["Security Guard","Supervisor","Owner","Security Guard","Marketing Relationships","Security Guard","Security Guard"],
            "salary"=>[9000,12000,25000,8500,12000,8500,8500],
            "Bonus"=>[0,500,2000,500,500,200,100])
employee.employee
describe(employee.salary)
using Statistics
mean(employee.salary)
first(employee, 5)
last(employee, 3)
first(employee)
last(employee)







