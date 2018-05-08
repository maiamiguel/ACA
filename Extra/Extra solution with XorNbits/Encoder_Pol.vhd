LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Encoder_Pol IS
  PORT (
			Ax: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			Rx: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
END Encoder_Pol;

ARCHITECTURE structure OF Encoder_Pol IS

  COMPONENT Exor
    Port (
				Ax : in STD_LOGIC_VECTOR(5 downto 0);
				Cout : out STD_LOGIC
			);
  END COMPONENT;
  COMPONENT Exor_8
    Port (
				Ax : in STD_LOGIC_VECTOR(7 downto 0);
				Cout : out STD_LOGIC
			);
  END COMPONENT;
  COMPONENT Exor_9
    Port (
				Ax : in STD_LOGIC_VECTOR(8 downto 0);
				Cout : out STD_LOGIC
			);
  END COMPONENT;
  COMPONENT Exor_10
    Port (
				Ax : in STD_LOGIC_VECTOR(9 downto 0);
				Cout : out STD_LOGIC
			);
  END COMPONENT;
  COMPONENT Exor_11
    Port (
				Ax : in STD_LOGIC_VECTOR(10 downto 0);
				Cout : out STD_LOGIC
			);
  END COMPONENT;
BEGIN
blk7: 	Exor_9 PORT MAP (
									Ax(15) & Ax(14) & Ax(13) & Ax(12) & Ax(7) & Ax(6) & Ax(5) & Ax(2) & Ax(0),
									Rx(7)
									);
blk6: 	Exor PORT MAP (
									Ax(11) & Ax(7) & Ax(4) & Ax(2) & Ax(1) & Ax(0),
									Rx(6)
									);
blk5: 	Exor_10 PORT MAP (
									Ax(15) & Ax(14) & Ax(13) & Ax(12) & Ax(10) & Ax(7) & Ax(5) & Ax(3) & Ax(2) & Ax(1),
									Rx(5)
									);	
blk4: 	Exor_10 PORT MAP (
									Ax(14) & Ax(13) & Ax(12) & Ax(11) & Ax(9) & Ax(6) & Ax(4) & Ax(2) & Ax(1) & Ax(0),
									Rx(4)
									);			
blk3: 	Exor_10 PORT MAP (
									Ax(15) & Ax(14) & Ax(11) & Ax(10) & Ax(8) & Ax(7) & Ax(6) & Ax(3) & Ax(2) & Ax(1),
									Rx(3)
									);
blk2: 	Exor_10 PORT MAP (
									Ax(14) & Ax(13) & Ax(10) & Ax(9) & Ax(7) & Ax(6) & Ax(5) & Ax(2) & Ax(1) & Ax(0),
									Rx(2)
									);
blk1: 	Exor_8 PORT MAP (
									Ax(15) & Ax(14) & Ax(9) & Ax(8) & Ax(7) & Ax(4) & Ax(2) & Ax(1),
									Rx(1)
									);
blk0: 	Exor_8 PORT MAP (
									Ax(15) & Ax(13) & Ax(8) & Ax(7) & Ax(6) & Ax(3) & Ax(1) & Ax(0),
									Rx(0)
									);										
END structure;