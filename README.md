stfc-nexus
==========

NEXUS format characterisation and migration tools

### Purpose of this module

This a snapshot of the raw2nexus migration tools. They are maintained elsewhere so having a complete copy of code maintained elsewhere is not best practice. However, a snapshot of what was used in the SCAP project, should anyone wants to recreate the testbed that has been used for WP17.TB.3, and the resources are here just for you.

### Intended Audience

Anyone who wants to use the tools that were used to perform the WP17 TB.3 experiments.

### Requirements

A hadoop cluster, Taverna cli execution environment

## <a name="starting"></a>Getting Started

Login to a machine that has a hadoop client that can submit jobs to the hadoop cluster.

Copy test data onto hdfs.

Install taverna cli locally.

Put Taverna ToMaR workflow script(tomarWorkflowLaunchertest) in Taverna directory and edit to suit.

Place all of the software tools onto hdfs. Edit tomarWorkflowLaunchertest script to refer to the tools installed on hdfs.

Install scripts and edit to suit then generate file lists for ToMaR. Edit tomarWorkflowLaunchertest to point to generated lists.

Install toolspecs and workflow. Edit tomarWorkflowLaunchertest to point to workflow and toolspecs.

The raw2nexus source is included as a zip and includes a binary and libs for Windows. The binary for Ubuntu/Redhat has been linked statically for ease of deployment on the cluster but it can be compiled with dynamic libs if required from the source if you want to negotiate the dependencies.


