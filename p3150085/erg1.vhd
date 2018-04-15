LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY erg1 IS 
	PORT(x1,x2,x3,X4,X5	:IN std_logic;
			f					:OUT std_logic);
END erg1;


ARCHITECTURE my_arch OF erg1 IS 
	SIGNAL 	Nx4,Nx1,Nx3,Nx5,Nx2,C0,C1,C2,C3,C4,C5,C6,C7,C8,C9 :STD_Logic;
	
	COMPONENT NOT1 
	PORT(x4	:IN STD_logic;
			Nx4	:OUT STD_logic);
		END COMPONENT;
		
		COMPONENT AND310 
	PORT(C0,C1,C2,C3,C4,C5,C6,C7,C8,C9	:IN STD_logic;
			f	:OUT STD_logic);
		END COMPONENT;
		
	COMPONENT OR14 
	PORT(Nx1,Nx3,Nx4,Nx5	:IN STD_logic;
			C0	:OUT STD_logic);
		END COMPONENT;
		
COMPONENT OR13 
	PORT(Nx1,Nx2,Nx5	:IN STD_logic;
			C9	:OUT STD_logic);
		END COMPONENT;
		
COMPONENT OR123 
	PORT(x3,x5	:IN STD_logic;
			C4	:OUT STD_logic);
		END COMPONENT;
		
	BEGIN
		stage0 :NOT1 PORT MAP (x4,Nx4);
		stage1 :NOT1 PORT MAP (x5,Nx5);
		stage2 :NOT1 PORT MAP (x1,Nx1);
		stage3 :NOT1 PORT MAP (x3,Nx3);
		stage4 :NOT1 PORT MAP (x2,Nx2);
		stage5 :OR14 PORT MAP (Nx1,Nx3,Nx4,Nx5,C0);
		stage6 :OR14 PORT MAP (x1,x2,Nx3,Nx4,C1);
		stage7 :OR14 PORT MAP (x1,x2,Nx4,Nx5,C2);
		stage8 :OR14 PORT MAP (Nx2,Nx3,x4,Nx5,C3);
		stage9 :OR123 PORT MAP (x3,x5,C4);
		stage10 :OR14 PORT MAP (Nx1,Nx3,x4,Nx5,C5);
		stage11 :OR14 PORT MAP (Nx1,Nx2,Nx3,Nx5,C6);
		stage12 :OR14 PORT MAP (Nx1,Nx2,x4,Nx5,C7);
		stage13 :OR123 PORT MAP (Nx1,x2,C8);
		stage14 :OR13 PORT MAP (Nx1,Nx2,Nx5,C9);
		stage15 :AND310 PORT MAP (C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,f);
		
	
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

	ENTITY AND310 IS
	PORT(C0,C1,C2,C3,C4,C5,C6,C7,C8,C9		:IN STD_logic;
			f 	:OUT STD_logic);
	END AND310;

		ARCHITECTURE AND1arch OF AND310 IS 
		BEGIN 
		f<= C0 AND C1 AND C2 AND C3 AND C4 AND C5 AND C6 AND C7 AND C8 AND C9;
		END AND1arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY OR13 IS
	PORT(Nx1,Nx2,Nx5		:IN STD_logic;
			C9 	:OUT STD_logic);
	END OR13;

		ARCHITECTURE OR1arch OF OR13 IS 
		BEGIN 
		C9 <= Nx1 OR Nx2 OR Nx5 ;
		END OR1arch;


LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY OR14 IS
	PORT(Nx1,Nx3,Nx4,Nx5	:IN STD_logic;
			C0 	:OUT STD_logic);
	END OR14;

		ARCHITECTURE OR1arch OF OR14 IS 
		BEGIN 
		C0 <=  Nx1 OR Nx3 OR Nx4 OR Nx5  ;
		END OR1arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all ;

	ENTITY OR123 IS
	PORT(x3,x5	:IN STD_logic;
			C4 	:OUT STD_logic);
	END OR123;

		ARCHITECTURE OR1arch OF OR123 IS 
		BEGIN 
		C4 <=  x3 OR x5   ;
		END OR1arch;

