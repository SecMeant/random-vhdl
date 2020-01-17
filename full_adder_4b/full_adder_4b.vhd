----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:38 01/17/2020 
-- Design Name: 
-- Module Name:    full_adder_4b - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_4b is
	port(
		cin  : in std_logic;
		arg0 : in std_logic_vector(3 downto 0);
		arg1 : in std_logic_vector(3 downto 0);
		ctrl : in std_logic;
		y : out  std_logic_vector(4 downto 0)
	);
end full_adder_4b;


	
architecture Behavioral of full_adder_4b is
	alias cout : std_logic is y(4);
	
	component full_adder
	port(
		cin, arg0, arg1 : in std_logic;
		ctrl :  in std_logic;
		result : out std_logic;
		cout : out std_logic
	);
	end component;
	
	signal cout_v : std_logic_vector(3 downto 0);
	
begin

	fa0 : full_adder port map(
		cin => cin,
		arg0 => arg0(0),
		arg1 => arg1(0),
		ctrl => ctrl,
		result => y(0),
		cout => cout_v(0)
	);
	
	fa1 : full_adder port map(
		cin => cout_v(0),
		arg0 => arg0(1),
		arg1 => arg1(1),
		ctrl => ctrl,
		result => y(1),
		cout => cout_v(1)
	);
	
	fa2 : full_adder port map(
		cin => cout_v(1),
		arg0 => arg0(2),
		arg1 => arg1(2),
		ctrl => ctrl,
		result => y(2),
		cout => cout_v(2)
	);
	
	fa3 : full_adder port map(
		cin => cout_v(2),
		arg0 => arg0(3),
		arg1 => arg1(3),
		ctrl => ctrl,
		result => y(3),
		cout => cout_v(3)
	);
	
	cout <= cout_v(3);
	
end Behavioral;

