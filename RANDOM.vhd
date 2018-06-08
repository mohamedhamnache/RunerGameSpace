----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:28 11/21/2014 
-- Design Name: 
-- Module Name:    LFSR - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RANDOM is
   port ( game_clock : in std_logic;
	             dead : in std_logic;
			   obst_out : out std_logic_vector(7 downto 0));
end RANDOM;


--Output 5 bits: lfsr_out, inputs: clock and reset

architecture Behavioral of RANDOM is
   signal lfsr : std_logic_vector (31 downto 0) := "00000000000000000000000000000100";
	signal lfsr_next : std_logic_vector (31 downto 0) := "00000000000000000000000000000100";
begin

   lfsr_seq : process(game_clock)
	begin
	   if (dead = '1') then
		   lfsr <= "00000000000000000000000000000000";
	   else   
			if (rising_edge(game_clock)) then
			   lfsr <= lfsr_next;
		   end if;
		end if;
	end process lfsr_seq;
	
	lfsr_comb : process(lfsr)
	begin
	   lfsr_next (31 downto 1) <= lfsr (30 downto 0);
		lfsr_next (0) <= lfsr(31) xor lfsr(5);
		lfsr_next (1) <= lfsr(19) xor lfsr(6);
		lfsr_next (2) <= lfsr(9) xor lfsr(3);
		lfsr_next (3) <= lfsr(19) xor lfsr(11);
		lfsr_next (4) <= lfsr(24) xor lfsr(30);
		lfsr_next (5) <= lfsr(16) xor lfsr(10);
		lfsr_next (6) <= lfsr(1) xor lfsr(6);
		lfsr_next (7) <= lfsr(2) xor lfsr(26);
		
	end process lfsr_comb;
	
	obst_out <= lfsr_next(7 downto 0);


end Behavioral;

