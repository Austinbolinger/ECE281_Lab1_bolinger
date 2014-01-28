----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Austin Bolinger
-- 
-- Create Date:    14:18:56 01/27/2014 
-- Design Name: 
-- Module Name:    Lab1_bolinger_8bit - Behavioral 
-- Project Name: Lab1 8 bit
-- Target Devices: Nexys 2
-- Tool versions: 2
-- Description: 8 bit
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_bolinger_8bit is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           Z : out  STD_LOGIC_VECTOR(7 downto 0));
end Lab1_bolinger_8bit;

architecture Behavioral of Lab1_bolinger_8bit is

signal B : STD_LOGIC_VECTOR(7 downto 0);

begin

B <= not A;
Z <= STD_LOGIC_VECTOR (signed(B) + 1);

end Behavioral;

