LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.mux4to1_package.all;
	ENTITY Alu  IS
		PORT (A,B, Ainvert,Binvert,CarryIn : IN STD_LOGIC ;
			Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			CarryOut,apotel : OUT STD_LOGIC ) ;
	END Alu ;
	ARCHITECTURE ArchAlu OF Alu IS
		SIGNAL Sum,NA,NB,MuxA,MuxB,A_AND_B,A_OR_B,A_XOR_B :STD_LOGIC;
		
		COMPONENT NOT1
			Port(A :IN	std_LOGIC;
				NA :Out std_LOGIC);
		END COMPONENT;
		
		COMPONENT mux2to1
			Port(A,NA , AInvert	:IN	std_LOGIC;
				MuxA :Out std_LOGIC);
		END COMPONENT;	
		
		COMPONENT Fa 
			PORT(MuxA,MuxB,CarryIn : IN STD_LOGIC;
					Sum, CarryOut : OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT AANDB
			PORT(MuxA,MuxB : IN STD_LOGIC;
					A_AND_B : OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT AORB
			PORT(MuxA,MuxB : IN STD_LOGIC;
					A_OR_B : OUT STD_LOGIC);
		END COMPONENT;
		
		COMPONENT AXORB
			PORT(MuxA,MuxB : IN STD_LOGIC;
					A_XOR_B : OUT STD_LOGIC);
		END COMPONENT;
		


			COMPONENT mux4to1
				PORT ( A_AND_B, A_OR_B, A_XOR_B,Sum : IN STD_LOGIC ;
					Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
					apotel : OUT STD_LOGIC ) ;
			END COMPONENT ;

		
	BEGIN	
		stage0 :NOT1 PORT MAP(A,NA);
		stage1 :NOT1 PORT MAP(B,NB);
		stage2 :mux2to1 PORT MAP(A,NA,AInvert,MuxA);
		stage3 :mux2to1 PORT MAP(B,NB,BInvert,MuxB);
		stage4 :Fa PORT MAP(MuxA,MuxB,CarryIn,Sum,CarryOut);
		stage5 :AANDB PORT MAP(MuxA,MuxB,A_AND_B);
		stage6 :AORB PORT MAP (MuxA,MuxB,A_OR_B);
		stage7 :AXORB PORT MAP (MuxA,MuxB,A_XOR_B);
		stage8 :mux4to1 PORT MAP (A_AND_B, A_OR_B, A_XOR_B,Sum,Operation(1 DOWNTO 0),apotel);

	END ArchAlu ;
	
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
	PACKAGE mux4to1_package IS
		COMPONENT mux4to1
			PORT (A_AND_B, A_OR_B, A_XOR_B,Sum : IN STD_LOGIC ;
			Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			apotel : OUT STD_LOGIC ) ;
		END COMPONENT ;
	END mux4to1_package ;
	
