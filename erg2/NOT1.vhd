LIBRARY ieee;
USE ieee.std_logic_1164.all;
	ENTITY NOT1 IS 
		PORT (A : IN STD_LOGIC;
				NA : OUT STD_LOGIC );
		END NOT1;
	ARCHITECTURE ArchNOT1 OF NOT1 IS
		BEGIN 
			NA <= NOT A;
		END ArchNOT1;