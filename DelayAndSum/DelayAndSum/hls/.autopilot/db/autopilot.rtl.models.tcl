set SynModuleInfo {
  {SRCNAME DelayAndSum MODELNAME DelayAndSum RTLNAME DelayAndSum IS_TOP 1
    SUBMODULES {
      {MODELNAME DelayAndSum_mul_16s_16s_31_1_1 RTLNAME DelayAndSum_mul_16s_16s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_31s_31_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_31s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_mulsub_16s_16s_31s_31_4_1 RTLNAME DelayAndSum_mac_mulsub_16s_16s_31s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_muladd_16s_16s_31ns_31_4_1 RTLNAME DelayAndSum_mac_muladd_16s_16s_31ns_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_mac_mulsub_16s_16s_31ns_31_4_1 RTLNAME DelayAndSum_mac_mulsub_16s_16s_31ns_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME DelayAndSum_control_s_axi RTLNAME DelayAndSum_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME DelayAndSum_regslice_both RTLNAME DelayAndSum_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
