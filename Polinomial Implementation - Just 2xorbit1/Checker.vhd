library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Checker is
    Port (
           EncoderRx: in  STD_LOGIC_VECTOR(7 downto 0);
			  CheckerAx: in  STD_LOGIC_VECTOR(23 downto 0);			  
           Rx: out STD_LOGIC_VECTOR(7 downto 0));
end Checker;
    
architecture STRUCTURAL of Checker is
	signal Bx: STD_LOGIC_VECTOR(7 downto 0);
	
BEGIN	
	
	Bx <= CheckerAx(7 downto 0);
	
	Rx(7) <= Bx(7) xor EncoderRx(7);
	Rx(6) <= Bx(6) xor EncoderRx(6);
	Rx(5) <= Bx(5) xor EncoderRx(5);
	Rx(4) <= Bx(4) xor EncoderRx(4);
	Rx(3) <= Bx(3) xor EncoderRx(3);
	Rx(2) <= Bx(2) xor EncoderRx(2);
	Rx(1) <= Bx(1) xor EncoderRx(1);
	Rx(0) <= Bx(0) xor EncoderRx(0);

end STRUCTURAL;