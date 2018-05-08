LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY mux4to1 IS
		PORT ( A_AND_B, A_OR_B, A_XOR_B,Sum : IN STD_LOGIC ;
			Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			apotel : OUT STD_LOGIC ) ;
END mux4to1 ;
	
ARCHITECTURE Archmux4to1 OF mux4to1 IS
	BEGIN
		WITH Operation SELECT
			apotel <= A_AND_B WHEN "00",
			A_OR_B WHEN "01",
			Sum WHEN "10",
			A_XOR_B WHEN OTHERS;
	END Archmux4to1 ;