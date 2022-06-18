	library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Washing_Machine is 
	 port(CLOCK_50: in std_logic;
			SW : in std_logic_vector(3 downto 0);
			KEY : in std_logic_vector(0 downto 0);
			HEX0 : out std_logic_vector(6 downto 0); 
			HEX1 : out std_logic_vector(6 downto 0); 
			HEX2 : out std_logic_vector(6 downto 0); 
			HEX4 : out std_logic_vector(6 downto 0); 
			HEX6 : out std_logic_vector(6 downto 0); 
			HEX7 : out std_logic_vector(6 downto 0); 
			LEDG : out std_logic_vector(3 downto 0); 
			LEDR : out std_logic_vector(0 downto 0)  
			);
end Washing_Machine;

architecture shell of Washing_Machine is
 
	signal s_time_exp,s_new_time,s_time_enable_1hz:std_logic;
	signal s_start_stop,s_prog1,s_prog2,s_prog3,s_reset:std_logic;
	signal s_prog_num,s_real_time,s_time_value: std_logic_vector(3 downto 0);
	signal s_enable_hex6,s_enable_hex7 : std_logic;
	signal s_hex6_out,s_hex7_out : std_logic_vector(3 downto 0);
	
begin
	
	--SW(1) > Programa 1 
	--SW(2) > Programa 2
	--SW(3) > Programa 3
	--SW(0) > Start/Stop 
	--KEY(0) > Reset global						
											
	debounce_reset : entity work.DebounceUnit(Behavioral)
								generic map(kHzClkFreq		=>  50000,
											mSecMinInWidth	=>  100,
											inPolarity		=> '0',
											outPolarity		=> '1'
											)
								port map(refClk => CLOCK_50,
											dirtyIn => KEY(0),		
											pulsedOut => s_reset
											);
	
	--Display para mostrar o nº do programa
	displayProgHex0 : entity work.BinSeg7Decoder(Behav) 	
								port map(enable => '1',	 					      
											bininput => s_prog_num,  
											decout_n => HEX0
											);
	
	--Display para mostrar pausa
	displayProgHex4 : entity work.BinSeg7Decoder(Behav)    
								port map(enable => not s_start_stop,
											bininput => "1011",
											decout_n => HEX4
											);	
										
	--Display para mostrar o "P"									
	displayProgHex1 : entity work.BinSeg7Decoder(Behav)     
								port map(enable => '1',
											bininput => "1010",
											decout_n => HEX1
											);
							
	--Display para mostrar a contagem de cada função						
	displayProgHex2 : entity work.BinSeg7Decoder(Behav)  				
								port map(enable => not s_time_exp,
											bininput => s_real_time,
											decout_n => HEX2
											);
											
	--Display para mostra tempo da programação										
	displayProgHex6 : entity work.BinSeg7Decoder(Behav)  				 
								port map(enable => s_enable_hex6,
											bininput => s_hex6_out, 
 											decout_n => HEX6
											);
	
   --Display para mostra tempo da programação	
	displayProgHex7 : entity work.BinSeg7Decoder(Behav)  				
								port map(enable => s_enable_hex7,
											bininput => s_hex7_out,  
											decout_n => HEX7
											);
																					
	TimeSelector : entity work.TimeSelect(Behav) 
								port map (p_num => s_prog_num,
											 enablehex6 => s_enable_hex6,
											 enablehex7 => s_enable_hex7,
											 hex6Out => s_hex6_out,
											 hex7Out => s_hex7_out
											);
											
	TimerAuxfsm : entity work.Timer(Behavioral)
								port map(reset => s_reset,          
											clk	=> CLOCK_50,  
											newTime => s_new_time,		
											timeVal => s_time_value,
											timeEnable => s_start_stop and s_time_enable_1hz,
											timeExp	=> s_time_exp,
											Realtime => s_real_time
											);
											
	washingMachineFSM  : entity work.FSM(Behavioral)
								port map(reset => s_reset,     
											clk	=> CLOCK_50,
											prog1 =>	s_prog1,	
											prog2 => s_prog2,
											prog3 =>	s_prog3,
											start_stop => s_start_stop, 
											newTime => s_new_time,
											timeVal => s_time_value,
											timeExp =>	s_time_exp,
											prog_num => s_prog_num,
											turnedOn => LEDR(0),
											water_valve => LEDG(0),
											water_pump => LEDG(1),
											rinse => LEDG(2),
											spin => LEDG(3)
											);
	
	Inputsregister : entity work.inRegister(Behav)
								port map(clk => CLOCK_50,  
											
											P1 => SW(1),
											P2 => SW(2),
											P3 => SW(3),
											start_stop => SW(0), 
											
											p1Out => s_prog1,
											p2Out => s_prog2,
											p3Out => s_prog3,
											start_stop_Out => s_start_stop			
											);
											
	pulse_gen_forTimer : entity work.Pulse_gen(Behav) 
								port map(clk => CLOCK_50,
											reset => s_reset,
											pulse => s_time_enable_1hz
											);
											

	
									
end shell;