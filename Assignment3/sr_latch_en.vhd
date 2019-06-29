----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:24:08 03/15/2019 
-- Design Name: 
-- Module Name:    sr_latch_en - Behavioral 
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

--S, R and C are the input bits to the latch and Q and QN are the output bits
entity sr_latch_en is
	port (S : in	std_logic;
			R : in std_logic;
			C : in std_logic;
			Q   : out std_logic;
			QN  : out std_logic);
end sr_latch_en;

--Defines the structure of the S-R latch with enable
--uses two pairs of internal signals to compensate for oscialltion, 
--and that Q/QN can't be used for input
architecture structural of sr_latch_en is
signal S_CNOT: std_logic;
signal R_CNOT: std_logic;
signal tQ1: std_logic:='0'; 
signal tQN1: std_logic:='0';
signal tQ2: std_logic; 
signal tQN2: std_logic;
component NAND2 is port(I0, I1: in std_logic; O: out std_logic); end component;
begin
U1: NAND2 port map (S, C, S_CNOT);
U2: NAND2 port map (R, C, R_CNOT);
U3: NAND2 port map (S_CNOT, tQN1, tQ2);
U4: NAND2 port map (R_CNOT, tQ1, tQN2);
tQ1 <= tQ2;
tQN1 <= tQN2;
Q <= tQ2;
QN <= tQN2;
end structural;

