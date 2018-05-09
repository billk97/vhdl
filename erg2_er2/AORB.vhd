LIBRARY ieee;
USE ieee.std_logic_1164.all;
	ENTITY AORB IS 
		PORT(MuxA,MuxB : IN STD_logic;
				A_OR_B : OUT STD_logic);
	END AORB;
	ARCHITECTURE ARCH_AORB OF AORB IS
	
		COMPONENT Alu
			PORT(A,B,Ainvert,Binvert,CarryIn: IN STD_LOGIC ;
			Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			CarryOut,apotel : OUT STD_LOGIC ) ;
		END COMPONENT;
		
		COMPONENT ControlCircuit 
		PORT ( OpCode : IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
			Ainvert,Binvert,CarryIn : OUT STD_LOGIC ;
			Operation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) ) ;
		END COMPONENT;
		
		
		BEGIN
			A_OR_B <= MuxA OR MuxB;
		END ARCH_AORB;