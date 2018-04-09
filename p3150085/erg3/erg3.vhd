LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity erg3 is 
	port (x1,x2,x3:IN STD_logic;
			f : OUT STD_logic);
END erg3;

ARCHITECTURE archerg3 OF erg3 IS 
Begin
f<= x2 or ((NOT x1 )AND x3);
end archerg3;
		