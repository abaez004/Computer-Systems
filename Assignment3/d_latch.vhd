----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:09:01 03/16/2019 
-- Design Name: 
-- Module Name:    d_latch - structural 
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

--C and D are the input bits to the latch and Q and QN are the output bits
entity d_latch is
	port (C : in	std_logic;
			D : in std_logic;
			Q   : out std_logic;
			QN  : out std_logic);
end d_latch;

--Defines the structure of the D-latch
--uses two pairs of internal signals to compensate for oscialltion, 
--and that Q/QN can't be used for input
architecture structural of d_latch is
signal DNOT: std_logic;
signal R: std_logic;
signal S: std_logic; 
signal tQ1: std_logic:='0';
signal tQN1: std_logic:='0';
signal tQ2: std_logic;
signal tQN2: std_logic;
component NAND2 is port(I0, I1: in std_logic; O: out std_logic); end component;
component INV is port(I: in std_logic; O: out std_logic); end component;
begin
U1: INV port map (D, DNOT);
U2: NAND2 port map (D, C, S);
U3: NAND2 port map (DNOT, C, R);
U5: NAND2 port map (S, tQN1, tQ2);
U6: NAND2 port map (R, tQ1, tQN2);
tQ1 <= tQ2;
tQN1 <= tQN2;
Q <= tQ2;
QN <= tQN2;
end structural;

