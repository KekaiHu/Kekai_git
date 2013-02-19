module ethernet_port_interface2 
(
		input  wire [27:0]  control_port_address,     //      control_port.address
		input  wire         control_port_read,        //                  .read
		output wire [31:0]  control_port_readdata,    //                  .readdata
		input  wire         control_port_write,       //                  .write
		input  wire [31:0]  control_port_writedata,   //                  .writedata
		output wire         control_port_waitrequest, //                  .waitrequest

		input  wire        clk,                            //        clock.clk
		input  wire        reset,                          //             .reset
		input  wire [7:0] sink_data1,             //           sink.data
		output wire        sink_ready1,            //               .ready
		input  wire        sink_valid1,            //               .valid
		input  wire [5:0]  sink_error1,            //               .error
		input  wire        sink_startofpacket1,    //               .startofpacket
		input  wire        sink_endofpacket1,      //               .endofpacket
		
//		output wire [7:0]  source_dataout,                //      		 source.data
//		input  wire        source_readyout,               //             .ready
//		output wire        source_validout,               //             .valid
//		output wire [5:0]  source_errorout,               //             .error
//		output wire        source_startofpacketout,       //             .startofpacket
//		output wire        source_endofpacketout,         //             .endofpacket
//		
		//input  wire [0:0]  sink_empty,          //                  .empty
//		
//		input  wire [7:0]  sink_datain,             //           sink.data
//		output wire        sink_readyin,            //               .ready
//		input  wire        sink_validin,            //               .valid
//		input  wire 	    sink_errorin,            //               .error
//		input  wire        sink_startofpacketin,    //               .startofpacket
//		input  wire        sink_endofpacketin      //               .endofpacket
		
		output wire [7:0]  source_data1,                //       source.data
		input  wire        source_ready1,               //             .ready
		output wire        source_valid1,               //             .valid
		output wire        source_error1,               //             .error
		output wire        source_startofpacket1,       //             .startofpacket
		output wire        source_endofpacket1         //             .endofpacket
		//output wire [0:0]  source_empty          //                  .empty
	);
	
 wire [7:0]  source_dataout;                //      		 source.data
  wire        source_readyout;               //             .ready
 wire        source_validout;               //             .valid
 wire [5:0]  source_errorout;               //             .error
 wire        source_startofpacketout;       //             .startofpacket
 wire        source_endofpacketout;
 wire [7:0]  source_data1;                //       source.data
  wire        source_ready1;               //             .ready
 wire        source_valid1;               //             .valid
 wire        source_error1;               //             .error
 wire        source_startofpacket1;       //             .startofpacket
 wire        source_endofpacket1;         //             .endofpacket
	
	assign source_dataout 				= sink_data1;
	assign sink_ready1 					= source_readyout;
	assign source_validout 				= sink_valid1;
	assign source_errorout 				= sink_error1;
	assign source_startofpacketout 	= sink_startofpacket1;
	assign source_endofpacketout 		= sink_endofpacket1;
	assign source_data1 					= sink_datain;
	assign sink_readyin 					= source_ready1;
	assign source_valid1 				= sink_validin;
	assign source_error1 				= sink_errorin;
	assign source_startofpacket1 		= sink_startofpacketin;
	assign source_endofpacket1 		= sink_endofpacketin;
	
	endmodule