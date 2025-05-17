# Delay-and-Sum Beamformer for the RFSoC4x2 in Vitis HLS

This repository contains the implementation of a delay-and-sum/Bartlett beamformer for the RFSoC4x2 in Vitis HLS.

The HLS code can be found under `DelayAndSum/`.

`pynq_driver/` contains a driver for usage of the HLS design with the [PYNQ framework](https://www.pynq.io/).

To rerun the test data generation, execute the Julia file `GenerateTestData.jl`. The required `BeamLib.jl` package
can be found on [GitHub](https://github.com/Matt266/beamlib.git), alongside installation instructions.
