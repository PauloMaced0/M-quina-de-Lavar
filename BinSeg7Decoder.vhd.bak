library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BinSeg7Decoder is 
		port(enabl : in std_logic;
			bininput : in std_logic_vector(3 downto 0);
			decout_n : out std_logic_vector(6 downto 0)
			);
end BinSeg7Decoder;

architecture Behav of BinSeg7Decoder is
begin
	--process(enabl)
	--begin
		--if (enabl = '1') then
			decout_n <=	"1111111" when (bininput = "0000") else
							"1111001" when (bininput = "0001") else
							"0100100" when (bininput = "0010") else
							"0110000" when (bininput = "0011") else
							"0011001" when (bininput = "0100") else
							"0010010" when (bininput = "0101") else
							"0000010" when (bininput = "0110") else
							"1111000" when (bininput = "0111") else
							"0000000" when (bininput = "1000") else
							"0010000" when (bininput = "1001") else
							"0001000" when (bininput = "1010") else
							"0000011" when (bininput = "1011") else
							"1000110" when (bininput = "1100") else
							"0100001" when (bininput = "1101") else
							"0000110" when (bininput = "1110") else
							"0001110" when (bininput = "1111") else
							"1000000";
	
			
			
		--end if;
	--end process;
end Behav;
