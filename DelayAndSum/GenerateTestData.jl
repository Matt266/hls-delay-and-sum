using JSON
using BeamLib
using Unitful
import Unitful: cm, GHz
import UnitfulAngles: °

using Format

pa = PhasedArray1D(Vector(-6cm:4cm:6cm))
weights = dsb_weights(pa, 3.75GHz, 70°)
ϕaxis = LinRange(0°, 180°, 10)
inputs = steerphi.(Ref(pa),  Ref(3.75GHz), ϕaxis)
results = Ref(weights').* inputs

fmt = 
raw"#ifndef __TEST_DATA_HPP__
#define __TEST_DATA_HPP__

constexpr unsigned int ARRAY_LENGTH = {:};
constexpr unsigned int NUM_ANGLES = {:};

constexpr double weights_real[ARRAY_LENGTH] = {:};
constexpr double weights_imag[ARRAY_LENGTH] = {:};

constexpr double inputs_real[NUM_ANGLES][ARRAY_LENGTH] = {:};
constexpr double inputs_imag[NUM_ANGLES][ARRAY_LENGTH] = {:};

constexpr double results_real[NUM_ANGLES] = {:};
constexpr double results_imag[NUM_ANGLES] = {:};

#endif //__TEST_DATA_HPP__"

content = format(fmt, 
    length(pa.elements),
    length(ϕaxis),
    replace(string(real.(weights)),"["=>"{", "]"=>"}"),
    replace(string(imag.(weights)),"["=>"{", "]"=>"}"),
    replace(string(real.(inputs)),"["=>"{", "]"=>"}"),
    replace(string(imag.(inputs)),"["=>"{", "]"=>"}"),
    replace(string(real.(results)),"["=>"{", "]"=>"}"),
    replace(string(imag.(results)),"["=>"{", "]"=>"}"),
)

open(joinpath(@__DIR__,"TestData.hpp"), "w") do file
    write(file, content)
end