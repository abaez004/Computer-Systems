----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:11:11 04/19/2019 
-- Design Name: 
-- Module Name:    t_ff - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.


entity t_ff is
	port ( CLK : in  std_logic;
			 Q	  : out std_logic;
			 QN  : out std_logic);
end t_ff;

architecture Behavioral of t_ff is
	component pet_d_ff is Port(CLK : in STD_LOGIC;
										D : in STD_LOGIC;
										Q : out STD_LOGIC;
										QN : out STD_LOGIC);
	end component;
	signal D : std_logic := '0';
	signal tQN : std_logic := '0';
begin
	U1: pet_d_ff port map(CLK, D, Q, tQN);
	D <= tQN;
	QN <= tQN;
	
end Behavioral;

