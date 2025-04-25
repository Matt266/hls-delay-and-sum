using BeamLib
using Plots
import Measures
xpos1 = [-6e-2, -2e-2, 2e-2, 6e-2]
pa = BeamLib.IsotropicArray(xpos1)
weights = BeamLib.dsb_weights(pa, 3.75e9, deg2rad(110))
faxis = LinRange(3.7e9, 3.8e9, 1024)
ϕaxis = LinRange(0, 180, 128)
W = Ref(weights').*BeamLib.steerphi.(Ref(pa), faxis, deg2rad.(ϕaxis)')
WdB = 20*log10.(abs.(W))

p1 = heatmap(ϕaxis,faxis/1e9, WdB, cmap = :jet, clim=(-40, 0))
plot!(title="Beampattern\nDelay-and-Sum Beamformer", cbar_title="\nPower in dB", margin=5*Measures.mm)
xlabel!("Angle in degree")
ylabel!("Frequency in GHz")

xpos2 = xpos1*10
pa = BeamLib.IsotropicArray(xpos2)
weights = BeamLib.dsb_weights(pa, 433e6, deg2rad(110))
faxis = LinRange(432e6, 434e6, 1024)
ϕaxis = LinRange(0, 180, 128)
W = Ref(weights').*BeamLib.steerphi.(Ref(pa), faxis, deg2rad.(ϕaxis)')
WdB = 20*log10.(abs.(W))

p2 = heatmap(ϕaxis,faxis/1e6, WdB, cmap = :jet, clim=(-40, 0))
plot!(title="Beampattern\nDelay-and-Sum Beamformer", cbar_title="\nPower in dB", margin=5*Measures.mm)
xlabel!("Angle in degree")
ylabel!("Frequency in MHz")

xpos2 = xpos1*1000
pa = BeamLib.IsotropicArray(xpos2)
weights = BeamLib.dsb_weights(pa, 4e6, deg2rad(110))
faxis = LinRange(3.5e6, 4.5e6, 1024)
ϕaxis = LinRange(0, 180, 128)
W = Ref(weights').*BeamLib.steerphi.(Ref(pa), faxis, deg2rad.(ϕaxis)')
WdB = 20*log10.(abs.(W))

p3 = heatmap(ϕaxis,faxis/1e6, WdB, cmap = :jet, clim=(-40, 0))
plot!(title="Beampattern\nDelay-and-Sum Beamformer", cbar_title="\nPower in dB", margin=5*Measures.mm)
xlabel!("Angle in degree")
ylabel!("Frequency in MHz")

plot(p1, p2, p3, layout = grid(3,1), size = (900, 900))