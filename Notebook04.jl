using DelimitedFiles, GR, Plots, DataFrames, CSV, Makie, PyPlot, GLM, MLJ
DataFrame()
DataFrame(A=1:19,B=5:13,fixed=1)
DataFrame("employee"=>["Ronny","Mike","Michale","Robin","Mini"],
            "occupation"=>["Security Guard","Supervisor","Owner","Security Guard","Marketing Relationships"],
            "salary"=>[9000,12000,25000,8500,12000],
            "Bonus"=>[0,500,2000,500,500],
            "Day"=[" "," "," "," "," "])
