library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Shift_checker is
	port(
			clk: in std_logic;
			reset: in std_logic;
			A: in std_logic_vector(23 downto 0);			--input
			dataOut: out std_logic_vector(7 downto 0);	--result
			crc_ready: out std_logic
			);
			
end Shift_checker;

architecture Behavioral of Shift_checker is
	signal s_register: std_logic_vector(23 downto 0);
	signal count: integer :=0;
begin
	process(clk)
	begin
		if(reset = '1') then
			s_register<= A;
			count<=0;
			crc_ready<='0';
		elsif(rising_edge(clk)) then
			if(count < 16) then --check when to finish the calculations
				s_register(23) <= s_register(23) XOR s_register(22);
				s_register(22) <= s_register(23) XOR s_register(21);
				s_register(21) <= s_register(20);
				s_register(20) <= s_register(23) XOR s_register(19);
				s_register(19) <= s_register(18);
				s_register(18) <= s_register(23) XOR s_register(17);
				s_register(17) <= s_register(16);
				s_register(16) <= s_register(23) XOR s_register(15);
				s_register(15 downto 1)<= s_register(14 downto 0);
				s_register(0)<= '0';
				count<=count+1;
				if(count=15)then
					crc_ready<='1';
				end if;
			end if;
			
		end if;	
	end process;	
		dataOut <= s_register(23 downto 16);
end Behavioral;