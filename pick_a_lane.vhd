----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:30 12/03/2014 
-- Design Name: 
-- Module Name:    pick_a_lane - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pick_a_lane is
    Port (     game_clock : in  STD_LOGIC;
					lfsr : in std_logic_vector (15 downto 0); 
	               --obst_in : in  STD_LOGIC;
           obst_to_lane_1 : out  STD_LOGIC;
           obst_to_lane_2 : out  STD_LOGIC;
           obst_to_lane_3 : out  STD_LOGIC;
           obst_to_lane_4 : out  STD_LOGIC
			  
			  );
end pick_a_lane;

architecture Behavioral of pick_a_lane is
 ----------zaki&moh--------------------|  
	--signal lfsr : std_logic_vector (15 downto 0) := "0001000010000001";
	--signal lfsr_next : std_logic_vector (15 downto 0) := "0001000010000001";
----------zaki&moh--------------------| 	

signal s1,s2,s3,s4 : STD_LOGIC;
begin
s1 <= lfsr(15) ;
s3 <= lfsr(0) ;
s2 <= lfsr(10) ;
s4 <= lfsr(5) ;
   lfsr_seq : process(game_clock,lfsr)
	begin  
	
	----------zaki&moh--------------------| 
		--if (rising_edge(game_clock)) then
			--lfsr <= lfsr_next;
		--end if;
	--this if statement chooses one of the lanes to get the obstacle based on the decimal value of lfsr
	   --if (obst_in = '1') then
		----------zaki&moh--------------------| 
		
		   if (s1='1' and s2='1' and s3='1' and s4='0') then
		      obst_to_lane_1 <= '1';
			   obst_to_lane_2 <= '0';
		   	obst_to_lane_3 <= '0';
			   obst_to_lane_4 <= '0';
		   elsif (s1='1' and s2='1' and s3='0' and s4='1' )then
		      obst_to_lane_1 <= '0';
		   	obst_to_lane_2 <= '1';
		   	obst_to_lane_3 <= '0';
		   	obst_to_lane_4 <= '0';
		   elsif (s1='1' and s2='0' and s3='1' and s4='0') then
		      obst_to_lane_1 <= '0';
	   		obst_to_lane_2 <= '0';
	   		obst_to_lane_3 <= '1';
	   		obst_to_lane_4 <= '0';
	   	elsif (s1='0' and s2='1' and s3='1' and s4='1') then
	   	   obst_to_lane_1 <= '0';
	   		obst_to_lane_2 <= '0';
	   		obst_to_lane_3 <= '0';
	   		obst_to_lane_4 <= '1';
	   	else
	   	   obst_to_lane_1 <= '0';
	   		obst_to_lane_2 <= '0';
	   		obst_to_lane_3 <= '0';
	   		obst_to_lane_4 <= '0';
	   	end if;
		--if obst_in from the obst_generator LFSR is not 1, then no obstacles are generated
		
		----------zaki&moh--------------------| 
		--else
		  -- obst_to_lane_1 <= '0';
	     -- obst_to_lane_2 <= '0';
	   	--obst_to_lane_3 <= '0';
	   	--obst_to_lane_4 <= '0';
	   --end if;
	----------zaki&moh--------------------| 
	
	end process lfsr_seq;
	
	
end Behavioral;