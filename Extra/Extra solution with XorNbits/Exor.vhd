library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Xor 6 bits

entity Exor is
	 Port (
				Ax : in STD_LOGIC_VECTOR(5 downto 0);
				Cout : out STD_LOGIC
			);
end Exor;

architecture structural of Exor is
begin
	 Cout <= Ax(5) xor Ax(4) xor Ax(3) xor Ax(2) xor Ax(1) xor Ax(0);	 
end structural;



-- Xor 8 bits



library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Exor_8 is
	 Port (
				Ax : in STD_LOGIC_VECTOR(7 downto 0);
				Cout : out STD_LOGIC
			);
end Exor_8;

architecture structural of Exor_8 is
begin
	 Cout <= Ax(7) xor Ax(6) xor Ax(5) xor Ax(4) xor Ax(3) xor Ax(2) xor Ax(1) xor Ax(0);	 
end structural;



-- Xor 9 bits



library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Exor_9 is
	 Port (
				Ax : in STD_LOGIC_VECTOR(8 downto 0);
				Cout : out STD_LOGIC
			);
end Exor_9;

architecture structural of Exor_9 is
begin
	 Cout <= Ax(8) xor Ax(7) xor Ax(6) xor Ax(5) xor Ax(4) xor Ax(3) xor Ax(2) xor Ax(1) xor Ax(0);	 
end structural;



-- Xor 10 bits



library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Exor_10 is
	 Port (
				Ax : in STD_LOGIC_VECTOR(9 downto 0);
				Cout : out STD_LOGIC
			);
end Exor_10;

architecture structural of Exor_10 is
begin
	 Cout <= Ax(9) xor Ax(8) xor Ax(7) xor Ax(6) xor Ax(5) xor Ax(4) xor Ax(3) xor Ax(2) xor Ax(1) xor Ax(0);	 
end structural;


-- Xor 11 bits



library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Exor_11 is
	 Port (
				Ax : in STD_LOGIC_VECTOR(10 downto 0);
				Cout : out STD_LOGIC
			);
end Exor_11;

architecture structural of Exor_11 is
begin
	 Cout <= Ax(10) xor Ax(9) xor Ax(8) xor Ax(7) xor Ax(6) xor Ax(5) xor Ax(4) xor Ax(3) xor Ax(2) xor Ax(1) xor Ax(0);	 
end structural;