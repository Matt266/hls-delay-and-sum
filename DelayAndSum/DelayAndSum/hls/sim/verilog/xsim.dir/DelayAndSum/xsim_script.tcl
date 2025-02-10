set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {DelayAndSum} -view {{DelayAndSum_dataflow_ana.wcfg}} -tclbatch {DelayAndSum.tcl} -protoinst {DelayAndSum.protoinst}
