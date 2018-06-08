----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:48 11/24/2014 
-- Design Name: 
-- Module Name:    graphics - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity graphics is
    Port ( pixel_clk   : in STD_LOGIC;
	        player_loc  : in STD_LOGIC_VECTOR (3 downto 0);
			  player_loc_y : in STD_LOGIC_VECTOR (31 downto 0);
			  pause       : in STD_LOGIC;
			  lives       : in STD_LOGIC_VECTOR (1 downto 0);
			  score       : in STD_LOGIC_VECTOR (7 downto 0);
           obst_locs_1,
           obst_locs_2,
           obst_locs_3,
           obst_locs_4 : in STD_LOGIC_VECTOR (31 downto 0);
			  dead        : in STD_LOGIC;
			  hcount      : in STD_LOGIC_VECTOR (10 downto 0);
			  vcount      : in STD_LOGIC_VECTOR (10 downto 0);
			  --the rgb signal is 8 bits: 3 for red, 3 for green, and 2 for blue (See Nexys 3 Reference Manual for more information about VGA Port.)
			  rgb         : out  STD_LOGIC_VECTOR (7 downto 0));
end graphics;

architecture Behavioral of graphics is

component RANDOM is
   port ( game_clock : in std_logic;
	             dead : in std_logic;
			   obst_out : out std_logic_vector(7 downto 0));
end component;

constant lane1_t : integer := 100; --distance between the top lane and top of the screen
signal x,y : integer range 0 to 650;
signal scoreIn,position,chiffre :integer;
--These signals will...
signal draw_obst,
       draw_plyr: std_logic;
-- signal lives : std_logic_vector (2 downto 0);		 
		 
signal color_selector : std_logic_vector (2 downto 0);		 
signal randomSignal :std_logic_vector(7 downto 0);	 
constant  backgroudColors :std_logic_vector(31 downto 0):="00010001000100100001011100110110";	 
signal obs_locs : std_logic_vector(127 downto 0);

begin

randomColor : RANDOM port map(pixel_clk,dead,randomSignal);
--Convert our 11-bit inputs, hcount and vcount, into integers,
--which will be easier to use to designate locations on the screen.
x <= conv_integer(hcount);
y <= conv_integer(vcount);


--draw_obst <= '1' when


obs_locs <= obst_locs_4 & obst_locs_3 & obst_locs_2 &obst_locs_1;
--These 32 are for lane 4.

Lane:process (x,y)

begin
test: for j in 0 to 3 loop

	for i in 0 to 31 loop

	  
	  if (( x > 500-i*10 ) and (x < 520-i*10) and (y > (j+1)*100 ) and (y<(j+1)*100+20) and (obs_locs(31-i+j*32)='1'))  then
	  draw_obst <= '1' ;
	  
	    exit test;
		 else
			draw_obst <= '0' ;
		 
	   end if;
	  end loop;
	  
	  
 end loop ;
   end process ;
	
	
	

	




Player:process (x,y,player_loc_y)

begin
test: for j in 0 to 31 loop

    if(player_loc_y(j)='1') then
			for i in 0 to 3 loop
			  if (((((x > 190+(31-j)*10) and (x < 195+(31-j)*10) and (y > 100+100*i) and (y < 120+100*i)) 
						or ((x > 195+(31-j)*10) and (x < 205+(31-j)*10) and (y > 105+100*i) and (y < 115+100*i)) 
						or ((x > 205+(31-j)*10) and (x < 210+(31-j)*10) and (y > 105+100*i) and (y < 110+100*i) and (y > x - 100+100*i-(31-j)*10)) 
						or ((x > 205+(31-j)*10) and (x < 210+(31-j)*10) and (y > 110+100*i) and (y < 115+100*i) and (y < - x + 320+100*i+(31-j)*10))))and (player_loc(3-i) = '1')) then
				  
							draw_plyr <= '1' ;
			  
							exit ;
				 else
							draw_plyr <= '0' ;
				 
				end if;
			  end loop;
		end if;
	  
	  
 end loop ;
   end process ;
	
	
	

	




	 




--mux
color_selector <= draw_obst & draw_plyr & dead;
--obstacle
colorProcess : process(color_selector,pause,score) begin
if color_selector = "100" then 
 rgb <= "00010111" ;
--player alone
elsif color_selector = "010" then
 rgb <= "11111111";
--obst hit player 
elsif color_selector = "110" then
 rgb <= "00011100";
-- dead player 
elsif  color_selector = "011" or color_selector = "111" then
 rgb <= "11100000";
else 
 rgb <= "00000000" ;
end if;

--- pause affichage
if pause = '1' then
	if ((x > 250) and (x < 280) and (y > 125) and (y < 275)) or
		((x > 350) and (x < 380) and (y > 125) and (y < 275)) then
		rgb <= "11111111"; end if;
end if;

--lives affichage
if (lives = "11")  or  (lives = "10") or (lives = "01") then
	  
	  
	  ----01-----
		if (((((x-380 > 190) and (x-380 < 195) and (y+80 > 100) and (y+80 < 120)) 
		or ((x-380 > 195) and (x-380 < 205) and (y+80 > 105) and (y+80 < 115)) 
		or ((x-380 > 205) and (x-380 < 210) and (y+80 > 105) and (y+80 < 110) and (y+80 > x-380 - 100)) 
		or ((x-380 > 195) and (x-380 < 205) and (y+80 > 105) and (y+80 < 115)) 
		or ((x-380 > 205) and (x-380 < 210) and (y+80 > 110) and (y+80 < 115) and (y+80 < - x+380 + 320)))))
		-----------
		then rgb <= "11100101"; end if;
end if;		
		---10------
if lives = "11"  or  lives = "10" then		
		if((((x-350 > 190) and (x-350 < 195) and (y+80 > 100) and (y+80 < 120)) 
		or ((x-350 > 195) and (x-350 < 205) and (y+80 > 105) and (y+80 < 115)) 
		or ((x-350 > 205) and (x-350 < 210) and (y+80 > 105) and (y+80 < 110) and (y+80 > x-350 - 100)) 
		or ((x-350 > 195) and (x-350 < 205) and (y+80 > 105) and (y+80 < 115)) 
		or ((x-350 > 205) and (x-350 < 210) and (y+80 > 110) and (y+80 < 115) and (y+80 < - x+350 + 320))))
then rgb <= "11100101"; end if;

		-----------
end if;			
if lives = "11"	then	
		 ------11---	
		if (((((x-320 > 190) and (x-320 < 195) and (y+80 > 100) and (y+80 < 120)) 
		or ((x-320 > 195) and (x-320 < 205) and (y+80 > 105) and (y+80 < 115)) 
		or ((x-320 > 205) and (x-320 < 210) and (y+80 > 105) and (y+80 < 110) and (y+80 > x-320 - 100)) 
		or ((x-320 > 195) and (x-320 < 205) and (y+80 > 105) and (y+80 < 115)) 
		or ((x-320 > 205) and (x-320 < 210) and (y+80 > 110) and (y+80 < 115) and (y+80 < - x+320 + 320)))))
		then rgb <= "11100101"; end if;
end if;
		----------	
	   






if (((x>200)and (x<203) and (y>45)and (y<48)) 
    or((x>135)and (x<138) and (y>186)and (y<189))
	 or((x>21)and (x<24) and (y>355)and (y<358))
	 or((x>272)and (x<275) and (y>283)and (y<286))--- to be checked
	 or((x>331)and (x<334) and (y>475)and (y<478))
	 or((x>633)and (x<636) and (y>404)and (y<407))
	 or((x>626)and (x<629) and (y>104)and (y<107))
	 )then
    rgb <= "11111111";
end if;
-- stars (yellow)
if (((x>103)and (x<107) and (y>67)and (y<71)) 
    or((x>313)and (x<317) and (y>120)and (y<124))
	 or((x>21)and (x<24) and (y>355)and (y<358))
	 or((x>250)and (x<254) and (y>66)and (y<70))--- to be checked
	 or((x>314)and (x<318) and (y>120)and (y<124))
	 or((x>550)and (x<554) and (y>40)and (y<44))
	 or((x>420)and (x<422) and (y>640)and (y<642))
	 )then
    rgb <= "10111000";
end if;
-- stars ()
if (((x>52)and (x<54) and (y>20)and (y<22)) 
    or((x>84)and (x<86) and (y>29)and (y<31))
	 or((x>159)and (x<161) and (y>49)and (y<51))
	 or((x>357)and (x<359) and (y>88)and (y<90))--- to be checked
	 or((x>431)and (x<432) and (y>54)and (y<56))
	 or((x>432)and (x<434) and (y>64)and (y<66))
	 or((x>535)and (x<537) and (y>19)and (y<21))
	 
    or((x>500)and (x<502) and (y>77)and (y<79))
	 or((x>570)and (x<572) and (y>103)and (y<105))
	 or((x>490)and (x<493) and (y>118)and (y<121))--- to be checked
	 or((x>444)and (x<447) and (y>136)and (y<139))
	 or((x>373)and (x<375) and (y>134)and (y<136))
	 or((x>324)and (x<326) and (y>180)and (y<182))
	 
	 or((x>240)and (x<242) and (y>140)and (y<142))
	 or((x>150)and (x<150) and (y>80)and (y<82))
	 or((x>100)and (x<102) and (y>90)and (y<92))--- to be checked
	 or((x>60)and (x<62) and (y>60)and (y<62))
	 or((x>60)and (x<62) and (y>80)and (y<82))
	 or((x>100)and (x<102) and (y>120)and (y<122))
	 
	 or((x>160)and (x<162) and (y>70)and (y<72))
	 or((x>240)and (x<242) and (y>240)and (y<242))
	 or((x>250)and (x<252) and (y>163)and (y<165))--- to be checked
	 or((x>273)and (x<275) and (y>150)and (y<152))
	 or((x>166)and (x<168) and (y>306)and (y<308))
	 or((x>100)and (x<102) and (y>352)and (y<354))
	 
	 or((x>66)and (x<68) and (y>355)and (y<357))
	 or((x>305)and (x<307) and (y>325)and (y<327))
	 or((x>335)and (x<337) and (y>358)and (y<360))--- to be checked
	 or((x>390)and (x<392) and (y>328)and (y<330))
	 or((x>515)and (x<517) and (y>295)and (y<297))
	 or((x>566)and (x<568) and (y>335)and (y<337))
	 )then
    rgb <= "10111011";
end if;


-----------------
if (((x-90>52)and (x-90<54) and (y-160>20)and (y-160<22)) 
    or((x-90>84)and (x-90<86) and (y-160>29)and (y-160<31))
	 or((x-90>159)and (x-90<161) and (y-160>49)and (y-160<51))
	 or((x-90>357)and (x-90<359) and (y-160>88)and (y-160<90))--- to be checked
	 or((x-90>431)and (x-90<432) and (y-160>54)and (y-160<56))
	 or((x-90>432)and (x-90<434) and (y-160>64)and (y-160<66))
	 or((x-90>535)and (x-90<537) and (y-160>19)and (y-160<21))
	 
    or((x-90>500)and (x-90<502) and (y-160>77)and (y-160<79))
	 or((x-90>570)and (x-90<572) and (y-160>103)and (y-160<105))
	 or((x-90>490)and (x-90<493) and (y-160>118)and (y-160<121))--- to be checked
	 or((x-90>444)and (x-90<447) and (y-160>136)and (y-160<139))
	 or((x-90>373)and (x-90<375) and (y-160>134)and (y-160<136))
	 or((x-90>324)and (x-90<326) and (y-160>180)and (y-160<182))
	 
	 or((x-90>240)and (x-90<242) and (y-160>140)and (y-160<142))
	 or((x-90>150)and (x-90<150) and (y-160>80)and (y-160<82))
	 or((x-90>100)and (x-90<102) and (y-160>90)and (y-160<92))--- to be checked
	 or((x-90>60)and (x-90<62) and (y-160>60)and (y-160<62))
	 or((x-90>60)and (x-90<62) and (y-160>80)and (y-160<82))
	 or((x-90>100)and (x-90<102) and (y-160>120)and (y-160<122))
	 
	 or((x-90>160)and (x-90<162) and (y-160>70)and (y-160<72))
	 or((x-90>240)and (x-90<242) and (y-160>240)and (y-160<242))
	 or((x-90>250)and (x-90<252) and (y-160>163)and (y-160<165))--- to be checked
	 or((x-90>273)and (x-90<275) and (y-160>150)and (y-160<152))
	 or((x-90>166)and (x-90<168) and (y-160>306)and (y-160<308))
	 or((x-90>100)and (x-90<102) and (y-160>352)and (y-160<354))
	 
	 or((x-90>66)and (x-90<68) and (y-160>355)and (y-160<357))
	 or((x-90>305)and (x-90<307) and (y-160>325)and (y-160<327))
	 or((x-90>335)and (x-90<337) and (y-160>358)and (y-160<360))--- to be checked
	 or((x-90>390)and (x-90<392) and (y-160>328)and (y-160<330))
	 or((x-90>515)and (x-90<517) and (y-160>295)and (y-160<297))
	 or((x-90>566)and (x-90<568) and (y-160>335)and (y-160<337))
	 )then
    rgb <= "10111011";
end if;
-- draw earth 
if ((((x+620)*(x+620))+((y-225)*(y-225)))<422500)then 
rgb <= "00000100";
end if;
-- draw shadow 
if ((((x+623)*(x+623))+((y-225)*(y-225)))<422500)then 
rgb <= "00000111";
end if;

-- draw land

if (
   ((x>15)and (x<21) and (y>237)and (y<242))
  or ((x>4)and (x<9) and (y>120)and (y<124))
  or ((x>3)and (x<10) and (y>123)and (y<128))
  or ((x>2)and (x<12) and (y>127)and (y<132))
  or ((x>0)and (x<16) and (y>131)and (y<138))
  or ((x<16) and (y>137)and (y<142))
  or ((x<14) and (y>141)and (y<145))
  or ((x>4)and (x<9) and (y>144)and (y<149))
  or ((x>0)and (x<16) and (y>148)and (y<155))
  or ((x<14) and (y>154)and (y<158))
  or ((x>2)and (x<12) and (y>157)and (y<163))
  
  or ((x<9) and (y>162)and (y<164))
  or ((x<12) and (y>163)and (y<168))
  or ((x<10) and (y>167)and (y<172))
  or ((x<8) and (y>171)and (y<178))
 
  or ((x<7) and (y>177)and (y<182))
  or ((x<8) and (y>182)and (y<188))
  or ((x<6) and (y>187)and (y<192))
  or ((x<4) and (y>191)and (y<195))
  
  
  or ((x>4)and (x<9) and (y>320)and (y<325))
  or ((x>0)and (x<16) and (y>324)and (y<328))
  or ((x<14) and (y>327)and (y<343))
  or ((x>2)and (x<12) and (y>342)and (y<348))
  
  )then 
  
rgb <= "00010000";
end if;


if (
   ((x>3)and (x<9) and (y>285)and (y<290))
    or ((x>4)and (x<13) and (y>289)and (y<295))
    or ((x>5)and (x<14) and (y>294)and (y<298))
  ) then 
  rgb <= "00010000";
end if;
  


-- score Display

-- score Display

scoreIn<=conv_integer(score);
for i in 2 downto 0 loop 

--chiffre(3 downto 0) <= to_unsigned(scoreIn mod 10);
if (scoreIn / (10**i) mod 10) = 0 then 
   	if ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30))) and 
			(((y > 20) and (y < 23)) or ((y > 37) and (y < 40))))
			 or ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 23))or 
			((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30))) and 
			((y > 20) and (y < 40))) then rgb <= "11111111"; end if;		 
elsif (scoreIn / (10**i) mod 10) = 1 then 		 
		 if ((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30) and (y > 20) and (y < 40)) then  rgb <= "11111111";end if;
elsif (scoreIn / (10**i) mod 10) = 2 then 
   	if (((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30)) and (
			((y > 20) and (y < 23)) or ((y > 28) and (y < 31)) or ((y > 37) and (y < 40))))
		or ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 23)) and ((y > 28) and (y < 40))) or
			(((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30)) and ((y > 20) and (y  < 31))))
		then rgb <= "11111111";	end if;		
elsif (scoreIn / (10**i) mod 10) = 3 then 
   	if (((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30)) and (
			((y > 20) and (y < 23)) or ((y > 28) and (y < 31)) or ((y > 37) and (y < 40))))
		or ((((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30)) and ((y > 20) and (y  <40 ))))
		then rgb <= "11111111";	end if;
elsif (scoreIn / (10**i) mod 10) = 4 then 
   	if (((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30)) and ( ((y > 28) and (y < 31)) ))
		or ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 23)) and ((y > 20) and (y  < 31))) or
			(((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30)) and ((y > 20) and (y < 40))))
		then rgb <= "11111111";	end if;		
elsif (scoreIn / (10**i) mod 10) = 5 then 
   	if (((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30)) and (
			((y > 20) and (y < 23)) or ((y > 28) and (y < 31)) or ((y > 37) and (y < 40))))
		or ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 23)) and ((y > 20) and (y  < 31))) or
			(((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30)) and ((y > 28) and (y  < 40))))
		then rgb <= "11111111";	end if;		
elsif (scoreIn / (10**i) mod 10) = 6 then 
   	if (((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30)) and (
			((y > 20) and (y < 23)) or ((y > 28) and (y < 31)) or ((y > 37) and (y < 40))))
		or ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 23)) and ((y > 20) and (y < 40))) or
			(((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30)) and ((y > 28) and (y  < 40))))
		then rgb <= "11111111";	end if;
elsif (scoreIn / (10**i) mod 10) = 7 then 
   	if ((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30) and (y > 20) and (y < 23)) or  
		 ((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30) and (y > 20) and (y < 40)) then rgb <= "11111111"; end if;		
elsif (scoreIn / (10**i) mod 10) = 8 then
   	if ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30))) and 
			(((y > 20) and (y < 23)) or ((y > 28) and (y < 31))or ((y > 37) and (y < 40))))
			 or ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 23))or 
			((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30))) and 
			((y > 20) and (y < 40))) then rgb <= "11111111"; end if;			
elsif (scoreIn / (10**i) mod 10) = 9 then 
   	if (((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 30)) and (
			((y > 20) and (y < 23)) or ((y > 28) and (y < 31)) or ((y > 37) and (y < 40))))
		or ((((  x-100+(i*20)  > 20) and (  x-100+(i*20)  < 23)) and ((y > 20) and (y  < 31))) or
			(((  x-100+(i*20)  > 27) and (  x-100+(i*20)  < 30)) and ((y > 20) and (y  < 40))))
		then rgb <= "11111111";	end if;
end if;
end loop;




end process colorProcess ;
	
end Behavioral;