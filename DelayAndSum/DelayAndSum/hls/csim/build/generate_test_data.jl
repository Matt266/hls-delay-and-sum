using JSON
using BeamLib
using Unitful
import Unitful: cm, GHz
import UnitfulAngles: °

pa = PhasedArray1D(Vector(-6cm:4cm:6cm))
weights = dsb_weights(pa, 3.75GHz, 70°)
ϕaxis = LinRange(0°, 180°, 10)
results = Ref(weights').*steerphi.(Ref(pa),  Ref(3.75GHz), ϕaxis)

content = 
raw"#ifndef __TEST_DATA_HPP__
#define __TEST_DATA_HPP__

Vitis Test

#endif //__TEST_DATA_HPP__"

open(joinpath(@__DIR__,"TestData.hpp"), "w") do file
    write(file, content)
end
