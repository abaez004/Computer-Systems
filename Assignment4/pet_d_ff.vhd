----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:47:01 04/19/2019 
-- Design Name: 
-- Module Name:    pet_d_ff - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.


entity pet_d_ff is
	Port(CLK : in STD_LOGIC;
		  D : in STD_LOGIC;
		  Q : out STD_LOGIC;
		  QN : out STD_LOGIC);
end pet_d_ff;

architecture Behavioral of pet_d_ff is
	component LD generic (INIT : bit := '0');
					 port( D : in std_logic;
							 G : in std_logic;
							 Q : out std_logic);
	end component;
	component INV is port(I: in std_logic; O: out std_logic);
	end component;
	signal Q1 : std_logic := '0';
	signal Q2 : std_logic := '0';
	signal NOT_CLK : std_logic;
begin
	U1: INV port map(CLK, NOT_CLK);
	U2: LD port map (D, NOT_CLK, Q1);
	U3: LD port map (Q1, CLK, Q2);
	U4: INV port map(Q2, QN);
	Q <= Q2;
end Behavioral;

