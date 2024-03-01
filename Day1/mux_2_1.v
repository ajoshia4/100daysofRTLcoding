// Design: 2:1 Mux
module mux_2_1(a,b,sel,y);
input reg a,b,sel;
output wire y;

assign y=sel?a:b;
  
endmodule