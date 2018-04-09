LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY erg1 IS 
	PORT(x1,x2,x3,X4,X5	:IN std_logic;
			f					:OUT std_logic);
END erg1;


ARCHITECTURE my_arch OF erg1 IS 
	SIGNAL 	Nx4,Nx1,Nx3,Nx5,Nx2,C0,C1,C2,C3,C4,C5,C6 :STD_Logic;
	
	COMPONENT NOT1 
	PORT(x4	:IN STD_logic;
			Nx4	:OUT STD_logic);
		END COMPONENT;

		COMPONENT AND1 
	PORT(Nx3,Nx5	:IN STD_logic;
			C5	:OUT STD_logic);
		END COMPONENT;
		
		COMPONENT AND23 
	PORT(x3,Nx4,Nx5	:IN STD_logic;
			C0	:OUT STD_logic);
		END COMPONENT;
		
		COMPONENT AND33 
	PORT(Nx1,x2,x3,Nx5	:IN STD_logic;
			C1	:OUT STD_logic);
		END COMPONENT;
		
	COMPONENT OR13 
	PORT(C0,C1,C2,C3,C4,C5,C6	:IN STD_logic;
			f	:OUT STD_logic);
		END COMPONENT;
	BEGIN
		stage0 :NOT1 PORT MAP (x4,Nx4);
		stage1 :NOT1 PORT MAP (x5,Nx5);
		stage2 :NOT1 PORT MAP (x1,Nx1);
		stage3 :NOT1 PORT MAP (x3,Nx3);
		stage4 :NOT1 PORT MAP (x2,Nx2);
		stage5 :AND23 PORT MAP (x3,Nx4,Nx5,C0);
		stage6 :AND33 PORT MAP (Nx1,x2,x3,Nx5,C1);
		stage7 :AND33 PORT MAP (x1,x2,Nx4,x5,C2);
		stage8 :AND33 PORT MAP (Nx1,x2,x3,x5,C3);
		stage9 :AND23 PORT MAP (x2,x4,x5,C4);
		stage10 :AND1 PORT MAP (Nx3,Nx5,C5);
		stage11 :AND33 PORT MAP (x1,Nx2,Nx4,x5,C6);
		stage12 :OR13 PORT MAP (C0,C1,C2,C3,C4,C5,C6,f);
		
	
END my_arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY NOT1 IS 
	PORT(x4:IN std_logic;
			Nx4: OUT std_logic);
	END NOT1;

		ARCHITECTURE Narch OF NOT1 IS
		BEGIN
		Nx4<= NOT x4;
		END Narch;

LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY AND1 IS
	PORT(Nx3,Nx5		:IN STD_logic;
			C5 	:OUT STD_logic);
	END AND1;

		ARCHITECTURE AND1arch OF AND1 IS 
		BEGIN 
		C5 <= Nx3 and Nx5;
		END AND1arch;
		
LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY AND23 IS
	PORT(x3,Nx4,Nx5		:IN STD_logic;
			C0 	:OUT STD_logic);
	END AND23;

		ARCHITECTURE AND1arch OF AND23 IS 
		BEGIN 
		C0 <= x3 and Nx4 AND Nx5;
		END AND1arch;
	
LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY AND33 IS
	PORT(Nx1,x2,x3,Nx5		:IN STD_logic;
			C1 	:OUT STD_logic);
	END AND33;

		ARCHITECTURE AND1arch OF AND33 IS 
		BEGIN 
		C1 <= Nx1 and x2 AND x3 AND Nx5 ;
		END AND1arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY OR13 IS
	PORT(C0,C1,C2,C3,C4,C5,C6		:IN STD_logic;
			F 	:OUT STD_logic);
	END OR13;

		ARCHITECTURE OR1arch OF OR13 IS 
		BEGIN 
		F <= C0 OR C1 OR C2 OR C3 OR C4 OR C5 OR C6 ;
		END OR1arch;
