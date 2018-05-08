LIBRARY ieee;
USE ieee.std_logic_1164.all;
	ENTITY Fa IS 
		PORT(MuxA,MuxB,CarryIn : IN STD_logic;
				Sum,CarryOut : OUT STD_logic);
	END Fa;
	ARCHITECTURE ArchFa OF Fa IS
		BEGIN
			Sum <= (MuxA AND (NOT MuxB)AND (NOT CarryIn))OR ((NOT MuxA) AND  MuxB AND (NOT CarryIn)) OR ((NOT MuxA) AND (NOT MuxB) AND CarryIn) OR(MuxA AND  MuxB AND CarryIn);
			CarryOut <= (MuxA and MuxB) OR (MuxA and CarryIn)OR(MuxB and CarryIn); 
		END ArchFa;
	
