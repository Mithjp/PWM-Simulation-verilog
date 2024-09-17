module pwm(
    input clk,
    output reg[3:0] pwm_out
);
    reg[6:0] cntr=0;
    always @(posedge clk)
    begin
        if(cntr < 100)
        begin
            cntr <= cntr +1;
            pwm_out[0] <= (cntr < 25) ? 1'b1 : 1'b0;
            pwm_out[1] <= (cntr < 50) ? 1'b1 : 1'b0;
            pwm_out[2] <= (cntr < 75) ? 1'b1 : 1'b0;
            pwm_out[3] <= (cntr < 95) ? 1'b1 : 1'b0;
         end
         else
             cntr <=0;
    end
endmodule
            
