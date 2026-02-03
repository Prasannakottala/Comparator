// Code your testbench here
// or browse Examples
module tb ();
  reg  a,b;
  wire gt,lt,eq;
  comp dut(a,b,gt,lt,eq);
  initial begin
    $monitor("$a=%0d,$b=%0d,gt=%0b,lt=%0b,eq=%0b",a,b,gt,lt,eq);
    #10; a=0; b=0;
    #10; a=0; b=1;
    #10; a=1; b=0;
    #10; a=1; b=1;
    $finish();
  end
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars;
  end
endmodule