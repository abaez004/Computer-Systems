--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:03:14 04/19/2019
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project 4/Project4/pet_d_ff_testbench.vhd
-- Project Name:  Project4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pet_d_ff
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pet_d_ff_testbench IS
END pet_d_ff_testbench;
 
ARCHITECTURE behavior OF pet_d_ff_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pet_d_ff
    PORT(
         CLK : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pet_d_ff PORT MAP (
          CLK => CLK,
          D => D,
          Q => Q,
          QN => QN
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
		D <= '0';
		wait for CLK_period * 2;
		D <= '1';
		wait for CLK_period * 2;
		D <= '0';
		wait for CLK_period * 2;
		D <= '1';
		wait for CLK_period * 2;
      wait;
   end process;

END;
