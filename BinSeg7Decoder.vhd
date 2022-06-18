library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BinSeg7Decoder is 
		port(enable : in std_logic;
			bininput : in std_logic_vector(3 downto 0);
			decout_n : out std_logic_vector(6 downto 0)
			);
end BinSeg7Decoder;

architecture Behav of BinSeg7Decoder is
	signal s_decOut_n : std_logic_vector(6 downto 0);
begin
	with binInput select
		s_decOut_n <= "1000000" when "0000", --0
			  "1111001" when "0001",   -- 1
			  "0100100" when "0010",   -- 2
			  "0110000" when "0011",   -- 3
			  "0011001" when "0100",   -- 4
			  "0010010" when "0101",   -- 5
			  "0000010" when "0110",   -- 6
			  "1111000" when "0111",   -- 7
			  "0000000" when "1000",   -- 8
			  "0010000" when "1001",   -- 9
			  "0001100" when "1010", 	-- P
			  "0110111" when "1011", 	-- =
			  "1111111" when others;  		
					
	decOut_n <= s_decOut_n when (enable = '1') else
				"1111111";
end Behav;
