set SynModuleInfo {
  {SRCNAME DelayAndSum MODELNAME DelayAndSum RTLNAME DelayAndSum IS_TOP 1
    SUBMODULES {
      {MODELNAME DelayAndSum_control_s_axi RTLNAME DelayAndSum_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME DelayAndSum_regslice_both RTLNAME DelayAndSum_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
