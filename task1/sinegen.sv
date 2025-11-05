module sinegen #(
    parameter   ADDRESS_WIDTH = 8,
                DATA_WIDTH = 8
)(
    input logic         clk,
    input logic [ADDRESS_WIDTH-1:0] incr,
    input logic  rst,
    input logic en,
    output logic [DATA_WIDTH-1:0]   dout

);

 logic [ADDRESS_WIDTH-1:0] addr;

counter myCounter (
  .clk (clk),
  .rst (rst),
  .en (en),
  .incr(incr),
  .count (addr)
);

rom myrom (
    .clk (clk),
    .addr (addr),
    .dout (dout)
);


endmodule
