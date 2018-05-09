LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
	ENTITY ergasia2 IS
		PORT (A,B : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
			OpCode : IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
			Apotel,Apotelesma1,Apotelesma2,Apotelesma3,Apotelesma4,Apotelesma5,Apotelesma6,Apotelesma7,
			Apotelesma8,Apotelesma9,Apotelesma10,Apotelesma11,Apotelesma12,Apotelesma13,Apotelesma14,Apotelesma15,CarryOutTEL	: OUT STD_LOGIC ) ;
	END ergasia2 ;
	ARCHITECTURE ArchERG2 OF ergasia2 IS
	SIGNAL Ainvert,Binvert,CarryIn ,CarryOut,COUT1,COUT2,COUT3,COUT4,COUT5,COUT6,COUT7,COUT8,COUT9,COUT10,COUT11,COUT12,COUT13,COUT14 :STD_LOGIC;
	SIGNAL	Operation : STD_LOGIC_VECTOR(1 DOWNTO 0);

		COMPONENT ControlCircuit
			PORT (  OpCode : IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
			Ainvert,Binvert,CarryIn : OUT STD_LOGIC ;
			Operation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) ) ;
		END COMPONENT;	
	
		COMPONENT Alu
			PORT ( A,B, Ainvert,Binvert,CarryIn : IN STD_LOGIC ;
					Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
					CarryOut,apotel : OUT STD_LOGIC ) ;
		END COMPONENT;
		

		
		BEGIN

		stage0 :ControlCircuit PORT MAP(OpCode(2 DOWNTO 0),Ainvert,Binvert,CarryIn,Operation(1 DOWNTO 0)); 
		stage1 :Alu PORT MAP(A(0),B(0), Ainvert,Binvert,CarryIn,Operation(1 DOWNTO 0),CarryOut,apotel) ;
		stage2 :Alu PORT MAP(A(1),B(1), Ainvert,Binvert,CarryOut,Operation(1 DOWNTO 0),COUT1,Apotelesma1) ;
		stage3 :Alu PORT MAP(A(2),B(2), Ainvert,Binvert,COUT1,Operation(1 DOWNTO 0),COUT2,Apotelesma2) ;
		stage4 :Alu PORT MAP(A(3),B(3), Ainvert,Binvert,COUT2,Operation(1 DOWNTO 0),COUT3,Apotelesma3) ;
		stage5 :Alu PORT MAP(A(4),B(4), Ainvert,Binvert,COUT3,Operation(1 DOWNTO 0),COUT4,Apotelesma4) ;
		stage6 :Alu PORT MAP(A(5),B(5), Ainvert,Binvert,COUT4,Operation(1 DOWNTO 0),COUT5,Apotelesma5) ;
		stage7 :Alu PORT MAP(A(6),B(6), Ainvert,Binvert,COUT5,Operation(1 DOWNTO 0),COUT6,Apotelesma6) ;
		stage8 :Alu PORT MAP(A(7),B(7), Ainvert,Binvert,COUT6,Operation(1 DOWNTO 0),COUT7,Apotelesma7) ;
		stage9 :Alu PORT MAP(A(8),B(8), Ainvert,Binvert,COUT7,Operation(1 DOWNTO 0),COUT8,Apotelesma8) ;
		stage10 :Alu PORT MAP(A(9),B(9), Ainvert,Binvert,COUT8,Operation(1 DOWNTO 0),COUT9,Apotelesma9) ;
		stage11 :Alu PORT MAP(A(10),B(10), Ainvert,Binvert,COUT9,Operation(1 DOWNTO 0),COUT10,Apotelesma10) ;
		stage12 :Alu PORT MAP(A(11),B(11), Ainvert,Binvert,COUT10,Operation(1 DOWNTO 0),COUT11,Apotelesma11) ;
		stage13 :Alu PORT MAP(A(12),B(12), Ainvert,Binvert,COUT11,Operation(1 DOWNTO 0),COUT12,Apotelesma12) ;
		stage14 :Alu PORT MAP(A(13),B(13), Ainvert,Binvert,COUT12,Operation(1 DOWNTO 0),COUT13,Apotelesma13) ;
		stage15 :Alu PORT MAP(A(14),B(14), Ainvert,Binvert,COUT13,Operation(1 DOWNTO 0),COUT14,Apotelesma14) ;
		stage16 :Alu PORT MAP(A(15),B(15), Ainvert,Binvert,COUT14,Operation(1 DOWNTO 0),CarryOutTEL,Apotelesma15) ;

		END ArchERG2;
