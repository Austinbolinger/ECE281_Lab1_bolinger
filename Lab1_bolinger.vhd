----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Austin Bolinger
-- 
-- Create Date:    14:57:29 01/22/2014 
-- Design Name: Lab 1
-- Module Name:    Lab1_bolinger - Behavioral 
-- Project Name: Lab1_bolinger
-- Target Devices: Nexys 2
-- Tool versions: 14.2
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

entity Lab1_bolinger is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_bolinger;

architecture Behavioral of Lab1_bolinger is

signal A_NOT, B_NOT, C_NOT, D, E, F, G, H : STD_LOGIC;

begin
	
	--inputs
	A_NOT <= not A;
	B_NOT <= not B;
	C_NOT <= not C;
	--signals
	D <= A and B_NOT and C_NOT;
	E <= A_NOT and C;
	F <= A_NOT and B and C_NOT;
	G <= B_NOT and C;
	H <= B and C_NOT;
	--outputs
	X <= D or E or F;
	Y <= G or H;
	Z <= C;

end Behavioral;

