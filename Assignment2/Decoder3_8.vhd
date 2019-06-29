----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:42 03/15/2019 
-- Design Name: 
-- Module Name:    Decoder3-8 - Behavioral 
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

--X0-X2 are the input bits of the decoder, and Y0-Y7 are the output bits
entity Decoder3_8 is
port (X0, X1, X2: in BIT;
		Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7: out BIT);
end Decoder3_8;

--Defines the behavior of the 3x8 decoder
--picks up Yn, where n is the binary representation of X0X1X2
architecture Behavioral of Decoder3_8 is
begin
Y0 <= '1' when X0='0' and X1='0' and X2='0' else '0';
Y1 <= '1' when X0='0' and X1='0' and X2='1' else '0';
Y2 <= '1' when X0='0' and X1='1' and X2='0' else '0';
Y3 <= '1' when X0='0' and X1='1' and X2='1' else '0';
Y4 <= '1' when X0='1' and X1='0' and X2='0' else '0';
Y5 <= '1' when X0='1' and X1='0' and X2='1' else '0';
Y6 <= '1' when X0='1' and X1='1' and X2='0' else '0';
Y7 <= '1' when X0='1' and X1='1' and X2='1' else '0';
end Behavioral;

