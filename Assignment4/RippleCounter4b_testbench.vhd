--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:42:38 04/19/2019
-- Design Name:   
-- Module Name:   /home/student/Desktop/Project 4/Project4/RippleCounter4b_testbench.vhd
-- Project Name:  Project4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RippleCounter4b
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
 
ENTITY RippleCounter4b_testbench IS
END RippleCounter4b_testbench;
 
ARCHITECTURE behavior OF RippleCounter4b_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RippleCounter4b
    PORT(
         CLK : IN  std_logic;
         Q0 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic;
         Q3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic;

 	--Outputs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;
   signal Q3 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RippleCounter4b PORT MAP (
          CLK => CLK,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
END;
