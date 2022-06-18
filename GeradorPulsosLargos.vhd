library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GeradorPulsosLargos is
	generic(NUMBER_OF_STEPS : positive := 50_000_000);
	port(clk : in std_logic;
		reset : in std_logic;
		blink : out std_logic
		);
end GeradorPulsosLargos;

architecture Behav of GeradorPulsosLargos is
	signal s_counter : natural range 0 to NUMBER_OF_STEPS-1;
begin

count_proc : process(clk)
begin
	if(rising_edge(clk)) then 
		if(reset = '1') or (s_counter >= NUMBER_OF_STEPS-1) then
			s_counter <= 0;
		else 
			s_counter <= s_counter +1;
		end if;
	end if;
end process;

blink <= '1' when s_counter >= (NUMBER_OF_STEPS/2) else '0';

end Behav;