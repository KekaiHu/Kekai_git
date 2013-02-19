module ethernet_port_interface_tb();

reg clk = 1'b0, reset = 1'b1;
reg statemac_clk =1'b0;

		parameter IDLE_WR_ACK0 =0, WRITE_WR_ACK0 = 1;
		reg [1:0] state_WR_ACK0,state_WR_ACK0_next;
		reg source_ready0_reg,source_ready0_reg_next;          

		parameter IDLE_WR_ACK1 =0, WRITE_WR_ACK1 = 1;
		reg [1:0] state_WR_ACK1,state_WR_ACK1_next;
		reg source_ready1_reg,source_ready1_reg_next; 

		parameter IDLE_WR_ACK2 =0, WRITE_WR_ACK2 = 1;
		reg [1:0] state_WR_ACK2,state_WR_ACK2_next;
		reg source_ready2_reg,source_ready2_reg_next; 

		parameter IDLE_WR_ACK3 =0, WRITE_WR_ACK3 = 1;
		reg [1:0] state_WR_ACK3,state_WR_ACK3_next;
		reg source_ready3_reg,source_ready3_reg_next; 		
		
	reg  [26:0]  control_port_address;     
	reg          control_port_read;        
	wire  [31:0]  control_port_readdata;   
	reg          control_port_write;       
	reg  [31:0]  control_port_writedata; 
	wire          control_port_waitrequest; 
		
	reg  [7:0]  sink_data0;             
	wire         sink_ready0;           
	reg         sink_valid0;            
	reg  [5:0]  sink_error0;           
	reg         sink_startofpacket0; 
	reg         sink_endofpacket0;    
		
	wire  [7:0]  source_data0;              
	reg         source_ready0;            
   wire        source_valid0;          
   wire        source_error0;          
   wire        source_startofpacket0;    
   wire        source_endofpacket0;        
		
	reg  [7:0]  sink_data1;        
   wire        sink_ready1;          
	reg         sink_valid1;       
	reg  [5:0]  sink_error1;         
	reg         sink_startofpacket1;   
	reg         sink_endofpacket1;      
		
   wire [7:0]  source_data1;            
	reg         source_ready1;          
   wire        source_valid1;            
   wire        source_error1;           
   wire        source_startofpacket1;     
   wire        source_endofpacket1;       
		
	reg  [7:0]  sink_data2;            
   wire        sink_ready2;         
	reg         sink_valid2;         
	reg  [5:0]  sink_error2;          
	reg         sink_startofpacket2; 
	reg         sink_endofpacket2;     
		
   wire [7:0]  source_data2;             
	reg         source_ready2;             
   wire        source_valid2;             
   wire        source_error2;          
   wire        source_startofpacket2;     
   wire        source_endofpacket2;     
		
	reg  [7:0]  sink_data3;           
   wire        sink_ready3;          
	reg         sink_valid3;           
	reg  [5:0]  sink_error3;           
	reg         sink_startofpacket3;  
	reg         sink_endofpacket3;    
		
   wire [7:0]  source_data3;           
	reg         source_ready3;            
   wire        source_valid3;              
   wire        source_error3;           
   wire        source_startofpacket3;     
   wire        source_endofpacket3;
	//wire ready_out;
	//wire start_sending;

 ethernet_port_interface DUT
(
		.clk(clk),                            //        clock.clk
		.statemac_clk(statemac_clk),
		.reset(reset),                          //             .reset
		
		.control_port_address(control_port_address),     //      control_port.address
		.control_port_read(control_port_read),        //                  .read
		.control_port_readdata(control_port_readdata),    //                  .readdata
		.control_port_write(control_port_write),       //                  .write
		.control_port_writedata(control_port_writedata),   //                  .writedata
		.control_port_waitrequest(control_port_waitrequest), //                  .waitrequest
		
		.sink_data0(sink_data0),             //           sink.data
		.sink_ready0(sink_ready0),            //               .ready
		.sink_valid0(sink_valid0),            //               .valid
		.sink_error0(sink_error0),            //               .error
		.sink_startofpacket0(sink_startofpacket0),    //               .startofpacket
		.sink_endofpacket0(source_endofpacket0),      //               .endofpacket
		
		.source_data0(source_data0),                //       source.data
		.source_ready0(1'b1),               //             .ready
		.source_valid0(source_valid0),               //             .valid
		.source_error0(source_error0),               //             .error
		.source_startofpacket0(source_startofpacket0),       //             .startofpacket
		.source_endofpacket0(source_endofpacket0),         //             .endofpacket
		
		.sink_data1(sink_data1),             //           sink.data
		.sink_ready1(sink_ready1),            //               .ready
		.sink_valid1(sink_valid1),            //               .valid
		.sink_error1(sink_error1),            //               .error
		.sink_startofpacket1(sink_startofpacket1),    //               .startofpacket
		.sink_endofpacket1(sink_endofpacket1),      //               .endofpacket
		
		.source_data1(source_data1),                //       source.data
		.source_ready1(1'b1),               //             .ready
		.source_valid1(source_valid1),               //             .valid
		.source_error1(source_error1),               //             .error
		.source_startofpacket1(source_startofpacket1),       //             .startofpacket
		.source_endofpacket1(source_endofpacket1),         //             .endofpacket
		
		.sink_data2(sink_data2),             //           sink.data
		.sink_ready2(sink_ready2),            //               .ready
		.sink_valid2(sink_valid2),            //               .valid
		.sink_error2(sink_error2),            //               .error
		.sink_startofpacket2(sink_startofpacket2),    //               .startofpacket
		.sink_endofpacket2(sink_endofpacket2),      //               .endofpacket
		
		.source_data2(source_data2),                //       source.data
		.source_ready2(1'b1),               //             .ready
		.source_valid2(source_valid2),               //             .valid
		.source_error2(source_error2),               //             .error
		.source_startofpacket2(source_startofpacket2),       //             .startofpacket
		.source_endofpacket2(source_endofpacket2),         //             .endofpacket
		
		.sink_data3(sink_data3),             //           sink.data
		.sink_ready3(sink_ready3),            //               .ready
		.sink_valid3(sink_valid3),            //               .valid
		.sink_error3(sink_error3),            //               .error
		.sink_startofpacket3(sink_startofpacket3),    //               .startofpacket
		.sink_endofpacket3(sink_endofpacket3),      //               .endofpacket
		
		.source_data3(source_data3),                //       source.data
		.source_ready3(1'b1),               //             .ready
		.source_valid3(source_valid3),               //             .valid
		.source_error3(source_error3),               //             .error
		.source_startofpacket3(source_startofpacket3),       //             .startofpacket
		.source_endofpacket3(source_endofpacket3)         //             .endofpacket
		//.ready_out(ready_out),
		//.start_sending(start_sending)
		
);	
// parameter IDLE_WR_ACK =0, WRITE_WR_ACK = 1;
//	reg [1:0] state_WR_ACK,state_WR_ACK_next;
//reg source_ready0_reg,source_ready0_reg_next;

		always@(posedge clk) begin
		if (reset) begin
			source_ready0_reg <= 0;
			state_WR_ACK0 <= IDLE_WR_ACK0;
		end
		else begin
			source_ready0_reg <= source_ready0_reg_next;
			state_WR_ACK0 <= state_WR_ACK0_next;
		end
	end	
			always@(posedge clk) begin
		if (reset) begin
			source_ready1_reg <= 0;
			state_WR_ACK1 <= IDLE_WR_ACK1;
		end
		else begin
			source_ready1_reg <= source_ready1_reg_next;
			state_WR_ACK1 <= state_WR_ACK1_next;
		end
	end	
			always@(posedge clk) begin
		if (reset) begin
			source_ready2_reg <= 0;
			state_WR_ACK2 <= IDLE_WR_ACK2;
		end
		else begin
			source_ready2_reg <= source_ready2_reg_next;
			state_WR_ACK2 <= state_WR_ACK2_next;
		end
	end	
			always@(posedge clk) begin
		if (reset) begin
			source_ready3_reg <= 0;
			state_WR_ACK3 <= IDLE_WR_ACK3;
		end
		else begin
			source_ready3_reg <= source_ready3_reg_next;
			state_WR_ACK3 <= state_WR_ACK3_next;
		end
	end	
	
	always@(*) begin
		state_WR_ACK0_next = state_WR_ACK0;
		source_ready0_reg_next = source_ready0_reg;
		
		case(state_WR_ACK0)
			IDLE_WR_ACK0: begin
				if(source_valid0)begin
					state_WR_ACK0_next = WRITE_WR_ACK0;
					source_ready0_reg_next <= 1'b1;
				end
				else 
					source_ready0_reg_next <= 1'b0;
			end
			
			WRITE_WR_ACK0: begin
				source_ready0_reg_next <= 1'b0;
				state_WR_ACK0_next = IDLE_WR_ACK0;
			end	
			
			default: begin
				source_ready0_reg_next <= 1'b0;
			end
			
		endcase
	end
		always@(*) begin
		state_WR_ACK1_next = state_WR_ACK1;
		source_ready1_reg_next = source_ready1_reg;

		
		case(state_WR_ACK1)
			IDLE_WR_ACK1: begin
				if(source_valid1)begin
					state_WR_ACK1_next = WRITE_WR_ACK1;
					source_ready1_reg_next <= 1'b1;
				end
				else 
					source_ready1_reg_next <= 1'b0;
			end
			
			WRITE_WR_ACK1: begin
				source_ready1_reg_next <= 1'b0;
				state_WR_ACK1_next = IDLE_WR_ACK1;
			end	
			
			default: begin
				source_ready1_reg_next <= 1'b0;
			end
			
		endcase
	end
		always@(*) begin
		state_WR_ACK2_next = state_WR_ACK2;
		source_ready2_reg_next = source_ready2_reg;
		
		case(state_WR_ACK2)
			IDLE_WR_ACK2: begin
				if(source_valid2)begin
					state_WR_ACK2_next = WRITE_WR_ACK2;
					source_ready2_reg_next <= 1'b1;
				end
				else 
					source_ready2_reg_next <= 1'b0;
			end
			
			WRITE_WR_ACK2: begin
				source_ready2_reg_next <= 1'b0;
				state_WR_ACK2_next = IDLE_WR_ACK2;
			end	
			
			default: begin
				source_ready2_reg_next <= 1'b0;
			end
			
		endcase
	end
		always@(*) begin
		state_WR_ACK3_next = state_WR_ACK3;
		source_ready3_reg_next = source_ready3_reg;
		
		case(state_WR_ACK3)
			IDLE_WR_ACK3: begin
				if(source_valid3)begin
					state_WR_ACK3_next = WRITE_WR_ACK3;
					source_ready3_reg_next <= 1'b1;
				end
				else 
					source_ready3_reg_next <= 1'b0;
			end
			
			WRITE_WR_ACK3: begin
				source_ready3_reg_next <= 1'b0;
				state_WR_ACK3_next = IDLE_WR_ACK3;
			end	
			
			default: begin
				source_ready3_reg_next <= 1'b0;
			end
			
		endcase
	end
	
	//assign source_ready0 = source_ready0_reg;

initial begin 
control_port_address = 27'h2000048;     
control_port_read = 1'b0;         
control_port_write = 1'b0;       
control_port_writedata = 32'h000000ca; 
	@(posedge clk);
	@(negedge clk);
	reset = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	


// ******************MAC***********************
	/*
control_port_address = 27'h2000028;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0000004e; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200002c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h46324300; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h2000030;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0000004e; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000034;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h46324301; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h2000038;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0000004e; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200003c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h46324302; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h2000040;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0000004e; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000044;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h46324303; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);	
	
*/
//*******************destip*********************

	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);

	//@(posedge start_sending);	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'hb; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'he; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h01; 
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h012; //input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h02; //location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0a0; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h03; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0df; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h04; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0c0; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h05; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0d5; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h06; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0e8; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h07; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h11d; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h08; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	

control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h122; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h09; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h145; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0a; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
/*	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h07D; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h06; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	
control_port_address = 27'h2000074;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0A1; // input
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200007c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h07; // location
	@(posedge clk);
	@(negedge clk);	
	control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);		
	*/	
	
	
//*********************LPM**************************	
/*	
	//@(posedge ready_out);	
control_port_address = 27'h2000048;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0A010400; 

	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h200004c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'hffffff00; 

	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000050;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0A010401;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000054;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h00000040;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200005c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h00000000;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	//@(posedge ready_out);


	
control_port_address = 27'h2000048;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0A020300; 

	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h200004c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'hffffff00; 

	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000050;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0A020301;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000054;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h00000010;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h200005c;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0000000f;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	//@(posedge ready_out);		
	
	
	*/
	
	
	
//control_port_address = 27'h80000d;     
//control_port_read = 1'b0;         
//control_port_write = 1'b1;       
//control_port_writedata = 32'hfe000002; 
//
//	@(posedge clk);
//	@(negedge clk);
//control_port_write = 1'b0;	
//
//	@(posedge clk);
//	@(negedge clk);
//	@(posedge clk);
//	@(negedge clk);
//	@(posedge clk);
//	@(negedge clk);
//control_port_address = 27'h2000058;     
//control_port_read = 1'b0;         
//control_port_write = 1'b1;       
//control_port_writedata = 32'h00000000;
//	@(posedge clk);
//	@(negedge clk);
//control_port_write = 1'b0;  	
//	@(posedge clk);
//	@(negedge clk);
//	@(posedge clk);
//	@(negedge clk);
//control_port_address = 27'h2000048;     
//control_port_read = 1'b1;         
//control_port_write = 1'b0;       
////control_port_writedata = 32'h12;
//	@(posedge clk);
//	@(negedge clk);
//control_port_read = 1'b0;  	
//	@(posedge clk);
//	@(negedge clk);
//	@(posedge clk);
//	@(negedge clk);
//control_port_address = 27'h200004c;     
//control_port_read = 1'b1;         
//control_port_write = 1'b0;       
////control_port_writedata = 32'h12;
//	@(posedge clk);
//	@(negedge clk);
//control_port_read = 1'b0;  	
//	@(posedge clk);
//	@(negedge clk);
//	@(posedge clk);
//	@(negedge clk);
//control_port_address = 27'h2000050;     
//control_port_read = 1'b1;         
//control_port_write = 1'b0;       
////control_port_writedata = 32'h12;
//	@(posedge clk);
//	@(negedge clk);
//control_port_read = 1'b0;  	
//	@(posedge clk);
//	@(negedge clk);
//	@(posedge clk);
//	@(negedge clk);
//control_port_address = 27'h2000054;     
//control_port_read = 1'b1;         
//control_port_write = 1'b0;       
////control_port_writedata = 32'h12;
//	@(posedge clk);
//	@(negedge clk);
//control_port_read = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);

//*******************ARP*******************
	
	/*
control_port_address = 27'h2000068;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0A010401; 

	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h2000060;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0000004e; 

	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000064;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h46324303;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000070;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h00000000;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);




	
control_port_address = 27'h2000068;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0A020301; 
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
control_port_address = 27'h2000060;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h0000004e; 

	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000064;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h46324302;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
control_port_address = 27'h2000070;     
control_port_read = 1'b0;         
control_port_write = 1'b1;       
control_port_writedata = 32'h00000001;
	@(posedge clk);
	@(negedge clk);
control_port_write = 1'b0;  	
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
*/

// ************************** Sending Packet **************** 	
/*
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'hCA;   
	sink_data2 = 8'h4e;  	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'hFE;   
	sink_data2 = 8'h46;   
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h00;   
	sink_data2 = 8'h32; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h00;   
sink_data2 = 8'h43; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h01;  
sink_data2 = 8'h02; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h01;  
sink_data2 = 8'h00; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h55;    
sink_data2 = 8'h21;  	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h55;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h55;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;  	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h55;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h55;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

//08 00 45 00	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h08;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;  
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h45;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	
	
////////////////////////////////////////////////  15

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h5c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h40;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h40;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h01;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

//1f 9b 0a 02 03 02 0a 01	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h9b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h02;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h03;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h02;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3a;    // 3A           
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h01;      //     01   
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h01;      //      01  
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h04;       //    04  
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h08;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
 	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hd0;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hc4;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;
	
 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hb6;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

//00 0f 92 d3 b0 4c 55 da	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h92;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hd3;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hb0;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h4c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h55;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hda;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h08;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h09;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	

//0e 0f 10 11 12 13 14 15	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h10;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h11;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h12;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h13;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h14;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h15;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h16;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h17;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h18;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h19;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
 	
//	1e 1f 20 21 22 23 24 25
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h20;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h21;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h22;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h23;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h24;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h25;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h26;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h27;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h28;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h29;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

//2e 2f 30 31 32 33 34 35	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h30;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h31;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h32;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h33;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h34;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h35;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h36;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h37;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h38;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h39;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
sink_valid2 = 1'b0;	
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);		

	*/
	// Sending packet 3

// ==================================



///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
////////////////////////////////////////////////



//////////////////////////////////////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////
////////////////////////////////////////////////////


	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'hCA;   
	sink_data2 = 8'h4e;  	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'hFE;   
	sink_data2 = 8'h46;   
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h00;   
	sink_data2 = 8'h32; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h00;   
sink_data2 = 8'h43; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h01;  
sink_data2 = 8'h02; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h01;  
sink_data2 = 8'h00; 	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data2 = 8'h55;    
sink_data2 = 8'h22;  	
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h15;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hd5;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;  	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h48;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h8c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

//08 00 45 00	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h08;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;  
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h45;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	
	
////////////////////////////////////////////////  15

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h01;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h40;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h40;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h01;             // this is the change
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

//1f 9b 0a 02 03 02 0a 01	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hc5;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h68;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0d;    // 3A           
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2d;      //     01   
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2d;      //      01  
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h10;       //    04  
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h08;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
 	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hd0;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hc4;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;
	
 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hb6;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

//00 0f 92 d3 b0 4c 55 da	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h92;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hd3;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hb0;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h4c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h55;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'hda;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h00;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h08;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h09;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	

//0e 0f 10 11 12 13 14 15	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h0f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h10;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h11;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h12;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h13;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h14;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h15;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h16;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h17;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h18;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h19;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
 	
//	1e 1f 20 21 22 23 24 25
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h1f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h20;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h21;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h22;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h23;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h24;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h25;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h26;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h27;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h28;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h29;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

//2e 2f 30 31 32 33 34 35	
	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h2f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h30;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h31;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h32;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h33;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h34;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h35;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h36;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h37;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h38;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h39;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3a;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3b;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3c;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3d;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3e;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data2 = 8'h3f;             
	sink_valid2 = 1'b1;            
	sink_error2 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
sink_valid2 = 1'b0;	
	@(posedge clk);
	@(negedge clk);	

	//////////////////////////
	/////////////////////////////
	
@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hCA;   
	sink_data1 = 8'h4e;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hFE;   
	sink_data1 = 8'h46;   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
	sink_data1 = 8'h32; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
sink_data1 = 8'h43; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h02; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h00; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h55;    
sink_data1 = 8'h21;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//08 00 45 00	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h45;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	
	
////////////////////////////////////////////////  15

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h5c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             // this is the change
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

//1f 9b 0a 02 03 02 0a 01	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h9b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h03;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;    // 3A           
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //     01   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //      01  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h04;       //    04  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
 	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hc4;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb6;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//00 0f 92 d3 b0 4c 55 da	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h92;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd3;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h4c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hda;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h09;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	

//0e 0f 10 11 12 13 14 15	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h10;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h12;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h13;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h14;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h15;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h16;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h17;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h18;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h19;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
 	
//	1e 1f 20 21 22 23 24 25
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h20;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h21;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h22;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h23;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h24;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h25;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h26;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h27;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h28;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h29;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

//2e 2f 30 31 32 33 34 35	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h30;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h31;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h32;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h33;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h34;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h35;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h36;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h37;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h38;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h39;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
sink_valid1 = 1'b0;	
	@(posedge clk);
	@(negedge clk);	

	/////////////////////////////
	////////////////////////////////
	///////////////////////////////
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hCA;   
	sink_data1 = 8'h4e;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hFE;   
	sink_data1 = 8'h46;   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
	sink_data1 = 8'h32; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
sink_data1 = 8'h43; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h02; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h00; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h55;    
sink_data1 = 8'h21;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//08 00 45 00	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h45;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	
	
////////////////////////////////////////////////  15

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h5c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             // this is the change
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

//1f 9b 0a 02 03 02 0a 01	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h9b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h03;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;    // 3A           
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //     01   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //      01  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h04;       //    04  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
 	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hc4;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb6;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//00 0f 92 d3 b0 4c 55 da	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h92;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd3;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h4c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hda;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h09;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	

//0e 0f 10 11 12 13 14 15	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h10;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h12;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h13;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h14;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h15;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h16;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h17;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h18;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h19;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
 	
//	1e 1f 20 21 22 23 24 25
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h20;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h21;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h22;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h23;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h24;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h25;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h26;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h27;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h28;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h29;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

//2e 2f 30 31 32 33 34 35	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h30;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h31;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h32;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h33;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h34;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h35;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h36;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h37;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h38;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h39;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
sink_valid1 = 1'b0;	
	@(posedge clk);
	@(negedge clk);	

	///////////////////////////////
	/////////////////////////////////
	///////////////////////////////
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hCA;   
	sink_data1 = 8'h4e;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hFE;   
	sink_data1 = 8'h46;   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
	sink_data1 = 8'h32; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
sink_data1 = 8'h43; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h02; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h00; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h55;    
sink_data1 = 8'h21;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//08 00 45 00	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h45;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	
	
////////////////////////////////////////////////  15

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h5c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             // this is the change
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

//1f 9b 0a 02 03 02 0a 01	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h9b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h03;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;    // 3A           
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //     01   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //      01  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h04;       //    04  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
 	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hc4;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb6;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//00 0f 92 d3 b0 4c 55 da	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h92;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd3;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h4c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hda;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h09;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	

//0e 0f 10 11 12 13 14 15	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h10;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h12;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h13;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h14;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h15;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h16;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h17;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h18;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h19;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
 	
//	1e 1f 20 21 22 23 24 25
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h20;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h21;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h22;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h23;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h24;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h25;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h26;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h27;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h28;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h29;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

//2e 2f 30 31 32 33 34 35	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h30;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h31;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h32;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h33;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h34;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h35;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h36;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h37;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h38;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h39;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
sink_valid1 = 1'b0;	
	@(posedge clk);
	@(negedge clk);	

	/////////////////////////////
	////////////////////////////
	///////////////////////////////
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hCA;   
	sink_data1 = 8'h4e;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hFE;   
	sink_data1 = 8'h46;   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
	sink_data1 = 8'h32; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
sink_data1 = 8'h43; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h02; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h00; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h55;    
sink_data1 = 8'h21;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//08 00 45 00	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h45;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	
	
////////////////////////////////////////////////  15

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h5c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             // this is the change
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

//1f 9b 0a 02 03 02 0a 01	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h9b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h03;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;    // 3A           
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //     01   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //      01  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h04;       //    04  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
 	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hc4;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb6;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//00 0f 92 d3 b0 4c 55 da	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h92;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd3;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h4c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hda;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h09;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	

//0e 0f 10 11 12 13 14 15	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h10;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h12;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h13;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h14;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h15;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h16;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h17;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h18;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h19;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
 	
//	1e 1f 20 21 22 23 24 25
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h20;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h21;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h22;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h23;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h24;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h25;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h26;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h27;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h28;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h29;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

//2e 2f 30 31 32 33 34 35	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h30;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h31;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h32;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h33;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h34;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h35;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h36;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h37;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h38;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h39;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
sink_valid1 = 1'b0;	
	@(posedge clk);
	@(negedge clk);	

	//////////////////////////////
	//////////////////////////////
	//////////////////////////////
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hCA;   
	sink_data1 = 8'h4e;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'hFE;   
	sink_data1 = 8'h46;   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
	sink_data1 = 8'h32; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h00;   
sink_data1 = 8'h43; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h02; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h01;  
sink_data1 = 8'h00; 	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	//sink_data1 = 8'h55;    
sink_data1 = 8'h21;  	
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//08 00 45 00	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;  
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h45;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	
	
////////////////////////////////////////////////  15

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h5c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h40;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             // this is the change
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

//1f 9b 0a 02 03 02 0a 01	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h9b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h03;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h02;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;    // 3A           
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //     01   
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h01;      //      01  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h04;       //    04  
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
 	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hc4;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb6;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

//00 0f 92 d3 b0 4c 55 da	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h92;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hd3;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hb0;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h4c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

 	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h55;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'hda;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h00;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h08;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h09;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	

//0e 0f 10 11 12 13 14 15	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h0f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h10;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h11;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h12;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h13;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h14;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 	
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h15;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h16;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h17;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h18;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h19;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
 	
//	1e 1f 20 21 22 23 24 25
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h1f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h20;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h21;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h22;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h23;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h24;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h25;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0; 
	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h26;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h27;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h28;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h29;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

//2e 2f 30 31 32 33 34 35	
	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h2f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h30;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h31;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h32;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h33;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h34;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h35;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h36;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h37;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h38;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h39;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3a;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3b;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3c;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3d;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3e;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;

	@(posedge clk);
	@(negedge clk);	
	sink_data1 = 8'h3f;             
	sink_valid1 = 1'b1;            
	sink_error1 = 6'h0;	

	@(posedge clk);
	@(negedge clk);	
sink_valid1 = 1'b0;	
	@(posedge clk);
	@(negedge clk);	


	
end

always begin
	#16000 clk = ~clk;
end
always begin
	#4000 statemac_clk = ~statemac_clk;
end



endmodule 	