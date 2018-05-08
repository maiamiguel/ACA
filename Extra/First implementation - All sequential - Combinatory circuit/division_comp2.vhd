library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity division_comp2 is
	Port (A : in STD_LOGIC_VECTOR(8 downto 0);
			Cout2 : out STD_LOGIC_VECTOR(7 downto 0));
end division_comp2;
 
architecture behav of division_comp2 is
 
begin
 	
	Cout2(7) <= a(8) XOR a(7) after 3ns; 
	Cout2(6) <= a(8) XOR a(6) after 3ns;
	Cout2(5) <= a(5) after 3ns;
	Cout2(4) <= a(8) XOR a(4) after 3ns;
	Cout2(3) <= a(3) after 3ns;
	Cout2(2) <= a(8) XOR a(2) after 3ns;
	Cout2(1) <= a(1) after 3ns;
	Cout2(0) <= a(8) after 3ns;

 
end behav;