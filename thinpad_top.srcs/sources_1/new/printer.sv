`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/17 01:28:40
// Design Name: 
// Module Name: printer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module printer(
    input wire logic clk,
    input wire logic rst,
    input wire logic valid,
    input wire logic [7:0] data,
    output logic ready
    );
    
assign ready = 1'b1;
    
always @(posedge clk) begin
  if(valid) begin
    $display("Got: %h", data);
  end
end
endmodule
