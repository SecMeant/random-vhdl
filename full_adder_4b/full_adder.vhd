----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:22 01/17/2020 
-- Design Name: 
-- Module Name:    salu - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
	port(
		cin, arg0, arg1 : in std_logic;
		ctrl :  in std_logic;
		result : out std_logic;
		cout : out std_logic
	);
end full_adder;

architecture Behavioral of full_adder is
	signal partial_sum, final_sum, early_carry, late_carry, final_carry: std_logic;
begin
	partial_sum <= cin xor arg0;
	final_sum <= partial_sum xor arg1;
	early_carry <= cin and arg0;
	late_carry <= partial_sum and arg1;
	final_carry <= early_carry or late_carry;
	
	result <= final_sum;
	cout <= final_carry;
end Behavioral;

