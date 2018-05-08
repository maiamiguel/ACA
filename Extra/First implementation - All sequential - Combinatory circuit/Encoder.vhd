library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Encoder is
	Port (A : in STD_LOGIC_VECTOR(15 downto 0);
			Cout : out STD_LOGIC_VECTOR(23 downto 0));
end Encoder;
 
architecture behav of Encoder is

component division_comp

port( A : in STD_LOGIC_VECTOR(8 downto 0);
			Cout2 : out STD_LOGIC_VECTOR(7 downto 0));
			
end component;
component division_comp2

port( A : in STD_LOGIC_VECTOR(8 downto 0);
			Cout2 : out STD_LOGIC_VECTOR(7 downto 0));
			
end component;
component division_comp3

port( A : in STD_LOGIC_VECTOR(8 downto 0);
			Cout2 : out STD_LOGIC_VECTOR(7 downto 0));
			
end component;
component division_comp4

port( A : in STD_LOGIC_VECTOR(8 downto 0);
			Cout2 : out STD_LOGIC_VECTOR(7 downto 0));
			
end component;
component division_comp5

port( A : in STD_LOGIC_VECTOR(8 downto 0);
			Cout2 : out STD_LOGIC_VECTOR(7 downto 0));
			
end component;
component division_comp6

port( A : in STD_LOGIC_VECTOR(8 downto 0);
			Cout2 : out STD_LOGIC_VECTOR(7 downto 0));
			
end component;

signal r1: STD_LOGIC_VECTOR(7 downto 0);
signal r2: STD_LOGIC_VECTOR(7 downto 0);
signal r3: STD_LOGIC_VECTOR(7 downto 0);
signal r4: STD_LOGIC_VECTOR(7 downto 0);
signal r5: STD_LOGIC_VECTOR(7 downto 0);
signal r6: STD_LOGIC_VECTOR(7 downto 0);
signal r7: STD_LOGIC_VECTOR(7 downto 0);
signal r8: STD_LOGIC_VECTOR(7 downto 0);
signal r9: STD_LOGIC_VECTOR(7 downto 0);
signal r10: STD_LOGIC_VECTOR(7 downto 0);
signal r11: STD_LOGIC_VECTOR(7 downto 0);
signal r12: STD_LOGIC_VECTOR(7 downto 0);
signal r13: STD_LOGIC_VECTOR(7 downto 0);
signal r14: STD_LOGIC_VECTOR(7 downto 0);
signal r15: STD_LOGIC_VECTOR(7 downto 0);
signal r16: STD_LOGIC_VECTOR(7 downto 0);

begin

COMP1: division_comp port map(A(15 downto 7), r1(7 downto 0));
COMP2: division_comp port map(r1(7 downto 0) & A(6), r2(7 downto 0));
COMP3: division_comp port map(r2(7 downto 0) & A(5), r3(7 downto 0));
COMP4: division_comp port map(r3(7 downto 0) & A(4), r4(7 downto 0));
COMP5: division_comp port map(r4(7 downto 0) & A(3), r5(7 downto 0));
COMP6: division_comp port map(r5(7 downto 0) & A(2), r6(7 downto 0));
COMP7: division_comp port map(r6(7 downto 0) & A(1), r7(7 downto 0));
COMP8: division_comp port map(r7(7 downto 0) & A(0), r8(7 downto 0));
COMP9: division_comp2 port map(r8(7 downto 0) & '0', r9(7 downto 0));
COMP10: division_comp2 port map(r9(7 downto 0) & '0', r10(7 downto 0));
COMP11: division_comp2 port map(r10(7 downto 0) & '0', r11(7 downto 0));
COMP12: division_comp2 port map(r11(7 downto 0) & '0', r12(7 downto 0));
COMP13: division_comp2 port map(r12(7 downto 0) & '0', r13(7 downto 0));
COMP14: division_comp2 port map(r13(7 downto 0) & '0', r14(7 downto 0));
COMP15: division_comp2 port map(r14(7 downto 0) & '0', r15(7 downto 0));
COMP16: division_comp2 port map(r15(7 downto 0) & '0', r16(7 downto 0));

Cout <= A(15 downto 0) & r16(7 downto 0);

end behav;