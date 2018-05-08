LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY mux2to1 IS
		PORT ( A, NA, AInvert : IN STD_LOGIC ;
			MuxA : OUT STD_LOGIC ) ;
END mux2to1 ;
	
ARCHITECTURE Archmux2to1 OF mux2to1 IS
	BEGIN
		WITH AInvert SELECT
		MuxA <= A WHEN '0',
		NA WHEN OTHERS ;
	END Archmux2to1 ;