using DelimitedFiles, GR, Plots, DataFrames, CSV, Makie, PyPlot, GLM, MLJ

DataFrame()
DataFrame(A=1:19,B=5:13,fixed=1)
DataFrame("employee"=>[11,12,13],
            "first name"=>["Ronny","Mike","Michale"])