----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:46 03/15/2019 
-- Design Name: 
-- Module Name:    slrl_latch - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.

--S_L and R_L are the input bits to the latch and Q and QN are the output bits
entity slrl_latch is
	port (S_L : in	std_logic;
			R_L : in std_logic;
			Q   : out std_logic;
			QN  : out std_logic);
end slrl_latch;

--Defines the structure of the S'-R' latch
--uses two internal signals to compensate for oscialltion, 
--and that Q/QN can't be used for input
architecture structural of slrl_latch is
signal tQ1: std_logic:='0'; 
signal tQ2: std_logic;
signal tQN1: std_logic:='0';
signal tQN2: std_logic;
component NAND2 is port(I0, I1: in std_logic; O: out std_logic); end component;
begin
U1: NAND2 port map (S_L, tQN1, tQ2);
U2: NAND2 port map (R_L, tQ1, tQN2);
tQ1 <= tQ2;
tQN1 <= tQN2;
Q <= tQ2;
QN <= tQN2;
end structural;



