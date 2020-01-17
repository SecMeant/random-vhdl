--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:00:29 01/17/2020
-- Design Name:   
-- Module Name:   /home/holz/mnt/cipher/t1/full_adder_4b_testbench.vhd
-- Project Name:  t1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder_4b
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
 
ENTITY full_adder_4b_testbench IS
END full_adder_4b_testbench;
 
ARCHITECTURE behavior OF full_adder_4b_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_4b
    PORT(
         cin : IN  std_logic;
         arg0 : IN  std_logic_vector(3 downto 0);
         arg1 : IN  std_logic_vector(3 downto 0);
         ctrl : IN  std_logic;
         y : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal cin : std_logic := '0';
   signal arg0 : std_logic_vector(3 downto 0) := (others => '0');
   signal arg1 : std_logic_vector(3 downto 0) := (others => '0');
   signal ctrl : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_4b PORT MAP (
          cin => cin,
          arg0 => arg0,
          arg1 => arg1,
          ctrl => ctrl,
          y => y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		cin <= '0';
		
		arg0 <= "0101";
		arg1 <= "1101";

      wait;
   end process;

END;
