using JSON
using BeamLib
using Unitful
import Unitful: cm, GHz
import UnitfulAngles: °

pa = PhasedArray1D(Vector(-6cm:4cm:6cm))
weights = dsb_weights(pa, 3.75GHz, 70°)
ϕaxis = LinRange(0°, 180°, 10)
results = Ref(weights').*steerphi.(Ref(pa),  Ref(3.75GHz), ϕaxis)

data = Dict("weights" => weights, "angles" => ϕaxis, "results" => results, "inputs" => steerphi.(Ref(pa),  Ref(3.75GHz), ϕaxis))

open(joinpath(@__DIR__, "TestData.json"),"w") do f
    JSON.print(f, data)
end
