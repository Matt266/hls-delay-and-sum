set SynModuleInfo {
  {SRCNAME DelayAndSum MODELNAME DelayAndSum RTLNAME DelayAndSum IS_TOP 1
    SUBMODULES {
      {MODELNAME DelayAndSum_mul_32s_32s_63_1_1 RTLNAME DelayAndSum_mul_32s_32s_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mul_63s_11s_73_3_1 RTLNAME DelayAndSum_mul_63s_11s_73_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mul_73s_32s_89_3_1 RTLNAME DelayAndSum_mul_73s_32s_89_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mul_12ns_17ns_28_1_1 RTLNAME DelayAndSum_mul_12ns_17ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_sparsemux_9_3_11_1_1 RTLNAME DelayAndSum_sparsemux_9_3_11_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME DelayAndSum_mul_16ns_19ns_34_1_1 RTLNAME DelayAndSum_mul_16ns_19ns_34_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_sparsemux_7_2_17_1_1 RTLNAME DelayAndSum_sparsemux_7_2_17_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME DelayAndSum_mul_16s_16s_31_1_1 RTLNAME DelayAndSum_mul_16s_16s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mac_muladd_12ns_3ns_14ns_14_4_1 RTLNAME DelayAndSum_mac_muladd_12ns_3ns_14ns_14_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_31s_31_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_31s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_mulsub_16s_16s_31s_31_4_1 RTLNAME DelayAndSum_mac_mulsub_16s_16s_31s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_31ns_31_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_31ns_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_mulsub_16s_16s_31ns_31_4_1 RTLNAME DelayAndSum_mac_mulsub_16s_16s_31ns_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_frp_fifoout RTLNAME DelayAndSum_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME DelayAndSum_control_s_axi RTLNAME DelayAndSum_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME DelayAndSum_frp_pipeline_valid RTLNAME DelayAndSum_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME DelayAndSum_frp_pipeline_valid_U}
      {MODELNAME DelayAndSum_regslice_both RTLNAME DelayAndSum_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
