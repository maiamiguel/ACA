library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Encoder is
    Port (
           Ax: in  STD_LOGIC_VECTOR(15 downto 0);
           Rx: out STD_LOGIC_VECTOR(7 downto 0));
end Encoder;
    
architecture STRUCTURAL of Encoder is
	signal r1:  std_logic := Ax(1) xor Ax(2);
	signal r2:  std_logic := Ax(7) xor Ax(14);
	signal r3:  std_logic := Ax(0) xor Ax(6);
	signal r4:  std_logic := Ax(8) xor Ax(15);
	signal r5:  std_logic := Ax(13) xor Ax(12);
	signal r6:  std_logic := Ax(4) xor Ax(9);
	signal r7:  std_logic := Ax(5) xor Ax(10);
	
	signal r8:  std_logic := r4 xor Ax(3);
	signal r9:  std_logic := r1 xor Ax(11);
	signal r10:  std_logic := r3 xor r2 xor Ax(13);
	signal r11:  std_logic := r1 xor r2;
	
begin
			Rx(7) <= Ax(15) xor Ax(12) xor Ax(5) xor Ax(2) xor r10;
			
			Rx(6) <= r9 xor Ax(7) xor Ax(4) xor Ax(0);
			
			Rx(5) <= Ax(15) xor r5 xor r7 xor Ax(3) xor r11;
			
			Rx(4) <= Ax(14) xor r5 xor r9 xor r6 xor r3;
			
			Rx(3) <= Ax(11) xor Ax(10) xor Ax(6) xor r11 xor r8;
			
			Rx(2) <= Ax(9) xor r7 xor r1 xor r10;
			
			Rx(1) <= r6 xor r11 xor r4;
			
			Rx(0) <= r8 xor Ax(1) xor r10;

end STRUCTURAL;