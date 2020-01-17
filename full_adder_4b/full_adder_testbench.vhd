--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:25:13 01/17/2020
-- Design Name:   
-- Module Name:   /home/holz/mnt/cipher/t1/full_adder_testbench.vhd
-- Project Name:  t1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
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
 
ENTITY full_adder_testbench IS
END full_adder_testbench;
 
ARCHITECTURE behavior OF full_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
			cin, arg0, arg1  : IN std_logic;
			ctrl : in std_logic;
         result : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal cin : std_logic := '0';
   signal arg0 : std_logic := '0';
	signal arg1 : std_logic := '0';
	signal ctrl : std_logic := '0';

 	--Outputs
   signal result : std_logic;
   signal cout : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          cin => cin,
          arg0 => arg0,
			 arg1 => arg1,
			 ctrl => ctrl,
          result => result,
          cout => cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		cin <= '0';
		
		arg0 <= '0';
		arg1 <= '0';
		wait for 100 ns;
		
		arg0 <= '1';
		arg1 <= '0';
		wait for 100 ns;
		
		arg0 <= '0';
		arg1 <= '1';
		wait for 100 ns;
		
		arg0 <= '1';
		arg1 <= '1';
		wait for 100 ns;
		
		cin <= '1';
		
		arg0 <= '0';
		arg1 <= '0';
		wait for 100 ns;
		
		arg0 <= '1';
		arg1 <= '0';
		wait for 100 ns;
		
		arg0 <= '0';
		arg1 <= '1';
		wait for 100 ns;
		
		arg0 <= '1';
		arg1 <= '1';
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
