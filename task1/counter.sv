module counter #(
    parameter   ADDRESS_WIDTH = 8,
                DATA_WIDTH = 8
)(
    input logic         clk,
    input logic         en,
    input logic     rst,
    input logic [ADDRESS_WIDTH-1:0] incr,
    output logic [DATA_WIDTH-1:0]   count

);

//logic [DATA_WIDTH-1:0] rom_array [2**ADDRESS_WIDTH-1:0];


always_ff @(posedge clk) 
begin 
    if (rst) count <= 0;
    else if (en) count <= count + incr;
    
     
end;

endmodule
