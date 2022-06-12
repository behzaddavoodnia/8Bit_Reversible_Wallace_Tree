--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
-- 
-- Create Date:    20:48:03 11/05/2015 
-- Design Name: 
-- Module Name:    FG2 - Behavioral 
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

entity FG2 is
PORT (A,B: IN STD_LOGIC; P,Q: OUT STD_LOGIC);
end FG2;

architecture Behavioral of FG2 is

BEGIN
  P<=A;
  Q<=(A XOR B);

end Behavioral;

