LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ControlCircuit IS
		PORT (  OpCode : IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
			Ainvert,Binvert,CarryIn : OUT STD_LOGIC ;
			Operation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) ) ;
END ControlCircuit ;
	
ARCHITECTURE ArchControlCircuit OF ControlCircuit IS
	BEGIN
		PROCESS(OpCode)
		BEGIN
			CASE  OpCode IS
				WHEN "000" => 
								Ainvert <= '0' ; 
								Binvert <= '0' ; 
								CarryIn<= '0' ; 
								Operation <= "00";
				WHEN "001" =>
								Ainvert <= '0' ;
								Binvert <= '0' ; 
								CarryIn<= '0' ;
								Operation <= "01" ;
				WHEN "011" =>
								Ainvert <= '0' ;
								Binvert <= '0' ;
								CarryIn<= '0' ;
								Operation <= "11" ;
				WHEN "010" =>
								Ainvert <= '0' ;
								Binvert <= '1' ;
								CarryIn<= '1' ;
								Operation <= "11" ;
				
				WHEN "101" =>
								Ainvert <= '1' ;
								Binvert <= '1' ;
								CarryIn<= '0' ; 
								Operation <= "00" ;
				WHEN "100" =>
								Ainvert <= '0' ;
								Binvert <= '0' ;
								CarryIn<= '0' ;
								Operation <= "10";
				WHEN Others =>
								Ainvert <= '0' ;
								Binvert <= '0' ;
								CarryIn<= '0' ;
								Operation <= "00" ;
				END CASE ;
			END PROCESS ;
	END ArchControlCircuit ;