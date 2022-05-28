# _hw.tcl file for MIPSMonitor
package require -exact qsys 14.0

# module properties
set_module_property NAME {MIPSMonitor_export}
set_module_property DISPLAY_NAME {MIPSMonitor_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance in_system_sources_probes_0 altera_in_system_sources_probes 20.1
    set_instance_parameter_value in_system_sources_probes_0 {create_source_clock} {0}
    set_instance_parameter_value in_system_sources_probes_0 {create_source_clock_enable} {0}
    set_instance_parameter_value in_system_sources_probes_0 {gui_use_auto_index} {1}
    set_instance_parameter_value in_system_sources_probes_0 {instance_id} {NONE}
    set_instance_parameter_value in_system_sources_probes_0 {probe_width} {511}
    set_instance_parameter_value in_system_sources_probes_0 {sld_instance_index} {0}
    set_instance_parameter_value in_system_sources_probes_0 {source_initial_value} {0}
    set_instance_parameter_value in_system_sources_probes_0 {source_width} {1}

    # connections and connection parameters
    # exported interfaces
    add_interface probes conduit end
    set_interface_property probes EXPORT_OF in_system_sources_probes_0.probes
    add_interface sources conduit end
    set_interface_property sources EXPORT_OF in_system_sources_probes_0.sources

    # interconnect requirements
    set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
    set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}
}
