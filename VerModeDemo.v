/*#-----------------#
# PROGRAM:       Verilog Program
# Created By   : ShiRong, Liu
# Created Date : 02/2019
# Description  : Practice Verilog mode by Emacs
#-----------------# */
module VerModeDemo (/*AUTOARG*/);

/*AUTOOUTPUT*/

/*AUTOINPUT*/

/*AUTOINOUT*/

/*AUTOINOUTMODULE("Reference")*/

/*AUTOWIRE*/

/*AUTOREG*/

/*AUTOTIEOFF*/

wire _unused_ok = &{1'b0,
                    /*AUTOUNUSED*/
                    1'b0};

/////////////////////////////////////////////
//// FSM (This auto-gen FSM should be reviewed again!!)
//// Check: 1. the bitwidth of nextstate 2. state info
/////////////////////////////////////////////
parameter [2:0] // synopsys enum state_info
    SM_IDLE =  3'b000,
    SM_SEND =  3'b001,
    SM_WAIT1 = 3'b010;

reg [2:0] /* synopsys enum state_info */
    currentstate; /* synopsys state_vector state_r */

/*AUTOASCIIENUM("currentstate", "nextstate", "SM_")*/

/////////////////////////////////////////////
//// Non-Blocking
/////////////////////////////////////////////

// Local Parameter
reg [3:0] a;
reg [9:0] b;

always@(posedge clk or negedge rst_n)
   if(!rst_n)
      begin
      /*AUTORESET*/
      end
   else
      begin
         a <= a_in;
         b <= b_in;
         currentstate <= nextstate;
      end

/////////////////////////////////////////////
//// Blocking
/////////////////////////////////////////////

always @ (/*AS*/)
  z = a & en |^ data[3:1];

/////////////////////////////////////////////
//// Instantiation Module
/////////////////////////////////////////////

// Regular expression Condition: "_\([a-z0-9]+\)"
/* InstModule AUTO_TEMPLATE "_\([a-z0-9]+\)" (
    .out        (@_constant_pin),
    );

*/

InstModule sub_RAM1 (/*AUTOINST*/);
InstModule sub_RAM2 (/*AUTOINST*/);

endmodule

/////////////////////////////////////////////
//// Another Module
/////////////////////////////////////////////
module Reference (i,o,io);
       input i;
       output o;
       inout io;
endmodule

// Local Variables:
// verilog-library-flags:("-y lib")
// End:
