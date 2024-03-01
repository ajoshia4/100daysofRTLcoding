module tb;

reg a,b,sel;
wire y;

initial begin
      a=0;b=0;sel=0;
   #5 a=0;b=1;sel=0;
   #5 a=1;b=0;sel=0;
   #5 a=1;b=1;sel=0;
   #5 a=0;b=0;sel=1;
   #5 a=0;b=1;sel=1;
   #5 a=1;b=0;sel=1;
   #5 a=1;b=1;sel=1;

   #100;
   $finish();
end

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule