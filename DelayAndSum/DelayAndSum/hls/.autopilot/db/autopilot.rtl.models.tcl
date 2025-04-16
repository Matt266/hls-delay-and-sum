set SynModuleInfo {
  {SRCNAME DelayAndSum MODELNAME DelayAndSum RTLNAME DelayAndSum IS_TOP 1
    SUBMODULES {
      {MODELNAME DelayAndSum_mul_20ns_25ns_44_1_1 RTLNAME DelayAndSum_mul_20ns_25ns_44_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mul_50s_19s_67_2_1 RTLNAME DelayAndSum_mul_50s_19s_67_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mul_67s_32s_85_3_1 RTLNAME DelayAndSum_mul_67s_32s_85_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_sparsemux_9_3_19_1_1 RTLNAME DelayAndSum_sparsemux_9_3_19_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME DelayAndSum_mul_18ns_24ns_41_1_1 RTLNAME DelayAndSum_mul_18ns_24ns_41_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_sparsemux_9_3_15_1_1 RTLNAME DelayAndSum_sparsemux_9_3_15_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME DelayAndSum_mul_16s_16s_32_1_1 RTLNAME DelayAndSum_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mac_muladd_20ns_3ns_22ns_22_4_1 RTLNAME DelayAndSum_mac_muladd_20ns_3ns_22ns_22_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_18ns_4ns_20ns_20_4_1 RTLNAME DelayAndSum_mac_muladd_18ns_4ns_20ns_20_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_32s_33_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_32s_33_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_mulsub_16s_16s_32s_32_4_1 RTLNAME DelayAndSum_mac_mulsub_16s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_33s_33_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_33s_33_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_33s_34_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_33s_34_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_mulsub_16s_16s_33s_33_4_1 RTLNAME DelayAndSum_mac_mulsub_16s_16s_33s_33_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_34s_34_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_34s_34_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_mulsub_16s_16s_34s_34_4_1 RTLNAME DelayAndSum_mac_mulsub_16s_16s_34s_34_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_frp_fifoout RTLNAME DelayAndSum_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME DelayAndSum_control_s_axi RTLNAME DelayAndSum_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME DelayAndSum_frp_pipeline_valid RTLNAME DelayAndSum_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME DelayAndSum_frp_pipeline_valid_U}
      {MODELNAME DelayAndSum_regslice_both RTLNAME DelayAndSum_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
