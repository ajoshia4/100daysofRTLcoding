`timescale 1ns / 1ps
module tb;
reg a,b,sel;
wire y;

//Generating 10 random values for a,b,sel
initial begin
for(int i=0;i<10;i++) begin
a=$urandom(); b=$urandom(); sel=$urandom();
#10;
end

#100;
$finish();
end

//Monitoring and displaying the values whenever stimulus changes
initial begin
$monitor("a=%d, b=%d, sel=%d, y=%d",a,b,sel,y);
end

//Dumping waveform file
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end

//Design instantiated
   mux_2_1 U1(.a(a),.b(b),.sel(sel),.y(y));
   
endmodule
