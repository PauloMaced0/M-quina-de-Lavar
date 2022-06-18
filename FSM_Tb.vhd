library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FSM_Tb is
end FSM_Tb;

architecture Stimulus of FSM_Tb is
	signal s_reset, s_clock, s_prog1, s_prog2, s_prog3, s_start_stop, s_time_exp : std_logic; 
	signal s_ledg0, s_ledg1, s_ledg2, s_ledg3, s_ledr0, s_new_time : std_logic;
	signal s_time_value, s_prog_num : std_logic_vector(3 downto 0); 
begin
		uut : entity work.FSM(Behavioral)
				port map(reset => s_reset,   
							clk	=> s_clock,
							prog1 =>	s_prog1,	
							prog2 => s_prog2,
							prog3 =>	s_prog3,
							start_stop => s_start_stop, 
							newTime => s_new_time, 
							timeVal => s_time_value, 
							timeExp =>	s_time_exp,
							prog_num => s_prog_num,
							turnedOn => s_ledr0,
							water_valve => s_ledg0,
							water_pump => s_ledg1,
							rinse => s_ledg2,
							spin => s_ledg3
							);
							
		--Teste do Programa 2
		s_reset <= '0';
		s_start_stop <= '1';
		s_prog1 <= '0'; s_prog2 <= '1'; s_prog3 <= '0';
							
		proc_clk : process
		begin
			s_clock <= '0';
			wait for 10 ns;
			s_clock <= '1';
			wait for 10 ns;
		end process;
	
		proc_timeExp : process
		begin
			wait for 500 ns;
			s_time_exp <= '1';
			wait for 30 ns;
			s_time_exp <= '0';
			wait for 890 ns;
			s_time_exp <= '1';
			wait for 30 ns;
			s_time_exp <= '0';
			wait for 190 ns;
			s_time_exp <= '1';
			wait for 30 ns;
			s_time_exp <= '0';
			wait for 390 ns;
			s_time_exp <= '1';
			wait for 30 ns;
			s_time_exp <= '0';
			wait for 0 ns;
			
		end process;
		
		
end Stimulus;
		