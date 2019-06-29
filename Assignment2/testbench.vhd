----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:05 03/15/2019 
-- Design Name: 
-- Module Name:    testbench - Behavioral 
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

entity testbench is
end testbench;

architecture Behavioral of testbench is

component Decoder2_4
port (X0,X1: in BIT;
		Y0,Y1,Y2,Y3: out BIT);
end component;

signal X0 : BIT := '0';
signal X1 : BIT := '0';

signal Y0 : BIT;
signal Y1 : BIT;
signal Y2 : BIT;
signal Y3 : BIT;

begin
	uut: Decoder2_4 PORT MAP (
		X0 => X0,
		X1 => X1,
		Y0 => Y0,
		Y1 => Y1,
		Y2 => Y2,
		Y3 => Y3);
		
		stim_proc: process
		begin
			X0 <= '0'; X1<='0'; wait for 10 ns;
			X0 <= '0'; X1<='1'; wait for 10 ns;
			X0 <= '1'; X1<='0'; wait for 10 ns;
			X0 <= '1'; X1<='1'; wait for 10 ns;
			wait;
		end process;
end Behavioral;

