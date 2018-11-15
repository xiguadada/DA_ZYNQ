//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "F:/hard_software/Zynq7000/Vivado/install/SDK/2015.4/bin;F:/hard_software/Zynq7000/Vivado/install/Vivado/2015.4/ids_lite/ISE/bin/nt64;F:/hard_software/Zynq7000/Vivado/install/Vivado/2015.4/ids_lite/ISE/lib/nt64;F:/hard_software/Zynq7000/Vivado/install/Vivado/2015.4/bin;";
} else {
  PathVal = "F:/hard_software/Zynq7000/Vivado/install/SDK/2015.4/bin;F:/hard_software/Zynq7000/Vivado/install/Vivado/2015.4/ids_lite/ISE/bin/nt64;F:/hard_software/Zynq7000/Vivado/install/Vivado/2015.4/ids_lite/ISE/lib/nt64;F:/hard_software/Zynq7000/Vivado/install/Vivado/2015.4/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


// pre-commands:
ISETouchFile( "init_design", "begin" );
ISEStep( "vivado",
         "-log dds_main.vdi -applog -m64 -messageDb vivado.pb -mode batch -source dds_main.tcl -notrace" );





function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
