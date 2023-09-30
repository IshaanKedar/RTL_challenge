module tb_halfadder();
reg a;
reg b;
wire c;
wire d;

halfadder U1 (.a(a),.b(b),.c(c),.d(d));
initial begin
    $dumpvars; // Enable waveform dumping for simulation
    
    // Test case 1
    a = 1'b1;                   // Assign input 'a' as 1
    $display("a=%b", a);        // Display value of input 'a'
    b = 1'b1;                   // Assign input 'b' as 1
    $display("b=%b", b);        // Display value of input 'b'
    #10;                        // Wait for 10 time units
    $display("s=%b", c);        // Display value of output 's' (Sum)
    $display("c=%b", d);        // Display value of output 'c' (Carry)
    
    // Test case 2
    a = 1'b0;                   // Assign input 'a' as 0
    $display("a=%b", a);        // Display value of input 'a'
    b = 1'b1;                   // Assign input 'b' as 1
    $display("b=%b", b);        // Display value of input 'b'
    #10;                        // Wait for 10 time units
    $display("s=%b", c);        // Display value of output 's' (Sum)
    $display("c=%b", d);        // Display value of output 'c' (Carry)
    
    // Test case 3
    a = 1'b1;                   // Assign input 'a' as 1
    $display("a=%b", a);        // Display value of input 'a'
    b = 1'b0;                   // Assign input 'b' as 0
    $display("b=%b", b);        // Display value of input 'b'
    #10;                        // Wait for 10 time units
    $display("s=%b", c);        // Display value of output 's' (Sum)
    $display("c=%b", d);        // Display value of output 'c' (Carry)
    
    // Test case 4
    a = 1'b0;                   // Assign input 'a' as 0
    $display("a=%b", a);        // Display value of input 'a'
    b = 1'b0;                   // Assign input 'b' as 0
    $display("b=%b", b);        // Display value of input 'b'
    #10;                        // Wait for 10 time units
    $display("s=%b", c);        // Display value of output 's' (Sum)
    $display("c=%b", d);        // Display value of output 'c' (Carry)
  end
endmodule
