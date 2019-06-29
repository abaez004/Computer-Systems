----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:21:40 04/19/2019 
-- Design Name: 
-- Module Name:    RippleCounter4b - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;
library work;
use work.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.


entity RippleCounter4b is
	port (CLK : in		std_logic;
			Q0  : out   std_logic;
			Q1  : out   std_logic;
			Q2	 : out	std_logic;
			Q3	 : out   std_logic);
end RippleCounter4b;

architecture Behavioral of RippleCounter4b is
	component t_ff is port ( CLK : in  std_logic;
			 Q	  : out std_logic;
			 QN  : out std_logic);
	end component;
	signal QN0 : std_logic := '0';
	signal QN1 : std_logic := '0';
	signal QN2 : std_logic := '0';
	signal QN3 : std_logic := '0';
begin
	U1: t_ff port map(CLK, Q0, QN0);
	U2: t_ff port map(QN0, Q1, QN1);
	U3: t_ff port map(QN1, Q2, QN2);
	U4: t_ff port map(QN2, Q3, QN3);
end Behavioral;

