----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:29 05/05/2018 
-- Design Name: 
-- Module Name:    KeyboardController - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KeyboardController is
    Port ( 
	        KeyboardClock : in  STD_LOGIC;
           KeyboardData : in  STD_LOGIC;
			  UP : out STD_LOGIC;
			  DOWN : out STD_LOGIC;
			  Right : out STD_LOGIC;
			  Left : out STD_LOGIC;
			  pause : inout STD_LOGIC;
			  reset : out STD_LOGIC
	);
end KeyboardController;

architecture Behavioral of KeyboardController is

signal bitCount : integer range 0 to 100 := 0;
signal scancodeReady : STD_LOGIC := '0';
signal scancode : STD_LOGIC_VECTOR(7 downto 0);
signal breakReceived : STD_LOGIC := '0';

constant keyboardSp : STD_LOGIC_VECTOR(7 downto 0) := "00101001";

constant keyboardZ: STD_LOGIC_VECTOR(7 downto 0) := "01110101";
constant keyboardS : STD_LOGIC_VECTOR(7 downto 0) := "01110010";

constant keyboardQ: STD_LOGIC_VECTOR(7 downto 0) := "01101011";
constant keyboardD : STD_LOGIC_VECTOR(7 downto 0) := "01110100";

--constant keyboardUp : STD_LOGIC_VECTOR(15 downto 0) := "1110000001110101";

--constant keyboardDo : STD_LOGIC_VECTOR(15 downto 0) := "1110000001110010";


begin

	keksfabrik : process(KeyboardClock)
	begin
		if falling_edge(KeyboardClock) then
			if bitCount = 0 and KeyboardData = '0' then --keyboard wants to send data
				scancodeReady <= '0';
				bitCount <= bitCount + 1;
			elsif bitCount > 0 and bitCount < 9 then -- shift one bit into the scancode from the left
				scancode <= KeyboardData & scancode(7 downto 1);
				bitCount <= bitCount + 1;
			elsif bitCount = 9 then -- parity bit
				bitCount <= bitCount + 1;
			elsif bitCount = 10 then -- end of message
				scancodeReady <= '1';
				bitCount <= 0;
			end if;
		end if;
	end process keksfabrik;
	
	kruemelfabrik : process(scancodeReady, scancode)
	begin
		if scancodeReady'event and scancodeReady = '1' then
			-- breakcode breaks the current scancode
			if breakReceived = '1' then 
				breakReceived <= '0';
				if scancode = keyboardSp then
					pause <= not pause;
				elsif scancode = keyboardZ or scancode = keyboardS then
					UP <= '0';
					DOWN <= '0';
					elsif scancode = keyboardQ or scancode = keyboardD then
					Right <= '0';
					Left <= '0';
				end if;
			elsif breakReceived = '0' then
				-- scancode processing
				if scancode = "11110000" then -- mark break for next scancode
					breakReceived <= '1';
				end if;
				
				--if scancode = keyboardR then
					--reset <= '1';
				--elsif scancode = keyboardSp then
					--pause <= not pause;
				if scancode = keyboardZ then
					UP <= '1';
 				elsif scancode = keyboardS then
					DOWN <= '1';
				elsif scancode = keyboardD then
					Right <= '1';
				elsif scancode = keyboardQ then
					Left <= '1';
				end if;
			end if;
		end if;
	end process kruemelfabrik;
end Behavioral;

