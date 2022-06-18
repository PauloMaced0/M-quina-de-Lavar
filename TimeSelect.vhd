library IEEE;
use IEEE.STD_LOGIC_1164.all;

--bloco dedicado para definir o tempo de cada programção nos display's

entity TimeSelect is 
	port(p_num : in std_logic_vector(3 downto 0);
			enablehex6 : out std_logic;
			enablehex7 : out std_logic;
			hex6Out : out std_logic_vector(3 downto 0);
			hex7Out : out std_logic_vector(3 downto 0)
			);
end TimeSelect;

architecture Behav of TimeSelect is 
	begin
		process(p_num)
		begin
			if(p_num = "0001") then
				hex6Out <= "1000";
				hex7Out <= "0011";
				enablehex6 <= '1';
				enablehex7 <= '1';
			elsif(p_num = "0010") then
				hex6Out <= "0010";
				hex7Out <= "0010";
				enablehex6 <= '1';
				enablehex7 <= '1';
			elsif(p_num = "0011") then
				hex6Out <= "0110";
				hex7Out <= "0000";
				enablehex6 <= '1';
				enablehex7 <= '0';
			else
				hex6Out <= "1111";
				hex7Out <= "1111";
				enablehex6 <= '0';
				enablehex7 <= '0';
			end if;
		end process;
end Behav;
		