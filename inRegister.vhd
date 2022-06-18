library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity inRegister is
	port(clk : in std_logic;
		P1 : in std_logic;
		P2 : in std_logic;
		P3 : in std_logic;
		start_stop : in std_logic;
		
		p1Out : out std_logic;
		p2Out : out std_logic;
		p3Out : out std_logic;
		start_stop_Out : out std_logic
		);
end inRegister;

architecture Behav of inRegister is
begin
	process(clk)
	begin
		if(rising_edge(clk)) then 
			p1Out <= P1;
			p2Out <= P2;
			p3Out <= P3;
			start_stop_Out <= start_stop;
		end if;
	end process;

end Behav;