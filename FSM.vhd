library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FSM is
	port(reset		: in std_logic;
		  clk			: in std_logic;
		  prog1 		: in std_logic;
		  prog2  	: in std_logic;
		  prog3 		: in std_logic;
		  
 		  start_stop: in std_logic;
		  newTime	: out std_logic;
		  timeVal	: out std_logic_vector(3 downto 0);
		  timeExp	: in  std_logic;
		  
		  prog_num : out std_logic_vector(3 downto 0); 
		  turnedOn : out std_logic;
		  water_valve : out std_logic;
		  water_pump : out std_logic;
		  rinse : out std_logic;
		  spin : out std_logic
		  );
end FSM;

architecture Behavioral of FSM is
	
	constant ESPERA_TIME				: std_logic_vector(3 downto 0) := "0010"; -- 2 s
	constant METER_AGUA_TIME		: std_logic_vector(3 downto 0) := "0101"; -- 5 s
	constant ENXAGUAR_TIME			: std_logic_vector(3 downto 0) := "1001"; -- 9 s
	constant TIRAR_AGUA_TIME		: std_logic_vector(3 downto 0) := "0010"; -- 2 s
	constant SPIN_TIME				: std_logic_vector(3 downto 0) := "0100"; -- 4 s
	
	type FState is (Finit,FMeter_agua1,FEnxaguar1,FSpin,FRemocao_agua1,FMeter_agua2,FEnxaguar2,FRemocao_agua2,FRemocao_agua3,FEspera,Aux2,
	Aux3,Aux4,Aux5,Aux6,Aux7,Aux8,Aux9);
	
	signal s_currentState, s_nextState	: FState := FInit;
	
	signal s_stateChanged : std_logic := '1';
	
begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= FInit;
				s_stateChanged <= '0';
			else
				if (s_currentState /= s_nextState) then
					s_stateChanged <= '1';
				else
					s_stateChanged <= '0';
				end if;
				s_currentState	<= s_nextState;
			end if;
		end if;
	end process; 
	 
	newTime <= s_stateChanged;
	
	comb_proc: process(s_currentState,timeExp,start_stop,prog1,prog2,prog3)
	begin
		case (s_currentState) is
			when FInit => 
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				
				if(start_stop = '1') then
					if(prog1 = '1') then
						prog_num  <= "0001";
						s_nextState <= FMeter_agua1;
					elsif(prog2 = '1') then
						prog_num <= "0010";
						s_nextState <= FMeter_agua2;
					elsif(prog3 = '1') then 
						s_nextState <= FSpin;
						prog_num <= "0011";
					else
						prog_num <= "1111";
						s_nextState <= FInit;
					end if;
				else 
					s_nextState <= FInit;
				end if;
				
			when FMeter_agua1 =>
				water_valve <= '0';
				water_pump <= '1';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= METER_AGUA_TIME;
				if(timeExp = '1') then 
					s_nextState <= Aux2;
				else
					s_nextState <= FMeter_agua1;
				end if;
				
			when Aux2 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FEnxaguar1;
				else
					s_nextState <= Aux2;
				end if;
		
			when FEnxaguar1 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '1';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= ENXAGUAR_TIME;
				if(timeExp = '1')then
					s_nextState <= Aux3; 
				else 
					s_nextState <= FEnxaguar1;
				end if;
				
			when Aux3 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FRemocao_agua1;
				else
					s_nextState <= Aux3;
				end if;
				
			when FRemocao_agua1 =>
				water_valve <= '1';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= TIRAR_AGUA_TIME;
				if(timeExp = '1')then
					s_nextState <= Aux4;
				else 
					s_nextState <= FRemocao_agua1;
				end if;
			
			when Aux4 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FMeter_agua2;
				else
					s_nextState <= Aux4;
				end if;
				
			when FMeter_agua2 =>
				water_valve <= '0';
				water_pump <= '1';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= METER_AGUA_TIME;
				if(timeExp = '1') then
					s_nextState <=Aux5;
				else 
					s_nextState <= FMeter_agua2;
				end if;
			
			when Aux5 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FEnxaguar2;
				else
					s_nextState <= Aux5;
				end if;
				
			when FEnxaguar2 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '1';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= ENXAGUAR_TIME;
				if(timeExp = '1') then
					s_nextState <= Aux6;
				else
					s_nextState <= FEnxaguar2;
				end if;
				
			when Aux6 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FRemocao_agua2;
				else
					s_nextState <= Aux6;
				end if;
				
			when FRemocao_agua2 =>
				water_pump <= '0';
				water_valve <= '1';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= TIRAR_AGUA_TIME;
				if(timeExp = '1') then
					s_nextState <= Aux7;
				else
					s_nextState <= FRemocao_agua2;
				end if;
				
			when Aux7 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FSpin;
				else
					s_nextState <= Aux7;
				end if;
			
			when FSpin =>
				water_pump <= '0';
				water_valve <= '0';
				rinse <= '0';
				spin <= '1';
				turnedOn <= '1';
				timeVal <= SPIN_TIME;
				if(timeExp = '1') then
					s_nextState <= Aux8;
				else
					s_nextState <= FSpin;
				end if;
			
			when Aux8 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FRemocao_agua3;
				else
					s_nextState <= Aux8;
				end if;
				
			when FRemocao_agua3 =>
				water_pump <= '0';
				water_valve <= '1';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= TIRAR_AGUA_TIME;
				if(timeExp = '1') then
					s_nextState <= Aux9;
				else
					s_nextState <= FRemocao_agua3;
				end if;
			
			when Aux9 =>
				water_valve <= '0';
				water_pump <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '0';
				timeVal	<= (others => '-');
				if(timeExp = '1') then 
					s_nextState <= FEspera;
				else
					s_nextState <= Aux9;
				end if;
				
			when FEspera =>
				water_pump <= '0'; 
				water_valve <= '0';
				rinse <= '0';
				spin <= '0';
				turnedOn <= '1';
				timeVal <= ESPERA_TIME;
				if(timeExp = '1') then
					s_nextState <= FInit;
				else
					s_nextState <= FEspera;
				end if;
			
		end case;
	end process;
end Behavioral;
			