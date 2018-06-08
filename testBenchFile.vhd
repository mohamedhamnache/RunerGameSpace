--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:09:06 04/30/2018
-- Design Name:   
-- Module Name:   D:/Etudes/2CS 2017-2018/S2/SEMB/Mini-Projet/RunnerGameProjectV2/testBenchFile.vhd
-- Project Name:  RunnerGameProjectV2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_level
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testBenchFile IS
END testBenchFile;
 
ARCHITECTURE behavior OF testBenchFile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_level
    PORT(
         Clk : IN  std_logic;
         player_input : IN  std_logic_vector(2 downto 0);
         rgb : OUT  std_logic_vector(7 downto 0);
         HS : OUT  std_logic;
         VS : OUT  std_logic;
         LD7 : OUT  std_logic;
         LD6 : OUT  std_logic;
         LD5 : OUT  std_logic;
         Segs : OUT  std_logic_vector(7 downto 0);
         AN : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal player_input : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal rgb : std_logic_vector(7 downto 0);
   signal HS : std_logic;
   signal VS : std_logic;
   signal LD7 : std_logic;
   signal LD6 : std_logic;
   signal LD5 : std_logic;
   signal Segs : std_logic_vector(7 downto 0);
   signal AN : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_level PORT MAP (
          Clk => Clk,
          player_input => player_input,
          rgb => rgb,
          HS => HS,
          VS => VS,
          LD7 => LD7,
          LD6 => LD6,
          LD5 => LD5,
          Segs => Segs,
          AN => AN
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
