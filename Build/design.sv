// Code your design here
module comp #(parameter width =2)(a,b,gt,lt,eq);
  input  a,b;
  output  reg [width:0]gt,lt,eq;
  always @(*) begin
    gt=0;
    lt=0;
    eq=0;
    if (a==b)
      eq =1;
    else if(a<b)
      lt =1;
    else 
      gt =1;
  end
   /* case ({a ,b})
      2'b00: a=b;
      2'b01: a<b;
      2'b10: a>b;
    endcase*/ 

endmodule
  
    