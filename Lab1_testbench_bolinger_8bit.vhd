--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:23:48 01/27/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Austin.Bolinger/Desktop/ECE281/Lab1_bolinger_8bit/Lab1_bolinger_testbench.vhd
-- Project Name:  Lab1_bolinger_8bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab1_bolinger_8bit
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
 
ENTITY Lab1_bolinger_testbench IS
END Lab1_bolinger_testbench;
 
ARCHITECTURE behavior OF Lab1_bolinger_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab1_bolinger_8bit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         Z : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab1_bolinger_8bit PORT MAP (
          A => A,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
       -- First line of truth table
		A <= "00000000";
		wait for 100 ns;	
		
		-- Second line of truth table
		A <= "00000001";
		wait for 100 ns;	
		
		-- Complete_ the rest of the truth table below:

		-- third line of truth table
		A <= "10000000";
		wait for 100 ns;	
		
		-- forth line of truth table
		A <= "00000001";
		wait for 100 ns;
		
		-- fifth line of truth table
		A <= "00000011";
		wait for 100 ns;
		
		-- sixth line of truth table
		A <= "10000001";
		wait for 100 ns;
		
		-- random line of truth table
		A <= "10100100";
		wait for 100 ns;
		
		-- random line of truth table
		A <= "11100110";
		wait for 100 ns;

      wait;
   end process;

END;
