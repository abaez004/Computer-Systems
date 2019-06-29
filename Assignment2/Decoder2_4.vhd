----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:48 03/15/2019 
-- Design Name: 
-- Module Name:    Decoder2_4 - Behavioral 
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

--X0 and X1 are the input bits of the decoder, and Y0-Y3 are the output bits
entity Decoder2_4 is
port (X0, X1: in BIT;
		Y0, Y1, Y2, Y3: out BIT);
end Decoder2_4;

--Defines the behavior of the 2x4 decoder
--picks up Yn, where n is the binary representation of X0X1
architecture Behavioral of Decoder2_4 is
begin
Y0 <= '1' when X0='0' and X1='0' else '0';
Y1 <= '1' when X0='0' and X1='1' else '0';
Y2 <= '1' when X0='1' and X1='0' else '0';
Y3 <= '1' when X0='1' and X1='1' else '0';
end Behavioral;

