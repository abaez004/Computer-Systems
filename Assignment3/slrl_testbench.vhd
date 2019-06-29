--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:14:10 03/15/2019
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project3/slrl_testbench.vhd
-- Project Name:  Project3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: slrl_latch
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY slrl_testbench IS
END slrl_testbench;
 
ARCHITECTURE structural_testbench OF slrl_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT slrl_latch
    PORT(
         S_L : IN  std_logic;
         R_L : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S_L : std_logic := '0';
   signal R_L : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
 
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: slrl_latch PORT MAP (
          S_L => S_L,
          R_L => R_L,
          Q => Q,
          QN => QN
        );
   -- Stimulus process
   stim_proc: process
   begin		
      S_L <= '0'; R_L <= '0';
		wait for 50 ns;
		S_L <= '0'; R_L <= '1';
		wait for 50 ns;
		S_L <= '1'; R_L <= '1';
		wait for 50 ns;
		S_L <= '1'; R_L <= '0';
		wait for 50 ns;
		S_L <= '1'; R_L <= '1';
		wait for 50 ns;
		S_L <= '0'; R_L <= '0';
		wait for 50 ns;
      wait;
   end process;
END structural_testbench;
