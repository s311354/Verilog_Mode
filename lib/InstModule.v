module InstModule(
      out,
      uniq,
      in
);
   parameter WIDTH;

   output reg [5:0] out;
   inout reg uniq;
   input     [WIDTH:0] in;

   always@(in or uniq)
     out = in & {9{uniq}};

endmodule
