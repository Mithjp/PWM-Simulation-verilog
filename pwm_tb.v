module pwm_tb;
    reg clk = 0;
    wire [3:0] pwm_out;
    pwm dut(
         .clk(clk),
         .pwm_out(pwm_out)
    );
    
    initial begin
        $dumpfile("test_pwm.vcd");
        $dumpvars(0, pwm_tb);
        #6000 $finish;
    end
    
    always #5 clk = ~clk;
endmodule
