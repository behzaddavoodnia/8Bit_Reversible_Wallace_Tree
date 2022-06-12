--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia 
-- 
-- Create Date:    14:43:16 05/05/2015 
-- Design Name: 
-- Module Name:    TSG - Behavioral 
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

entity TSG is
PORT (A,B,C,D: IN STD_LOGIC; P,Q,R,S: OUT STD_LOGIC);
end TSG;

architecture Behavioral of TSG is

  begin

P<=A;
Q<=((NOT A)AND((NOT C) XOR (NOT B)));
R<=((((NOT A) AND (NOT C)) XOR (NOT B)) XOR D);
S<=(((((NOT A) AND (NOT C)) XOR (NOT B)) AND D ) XOR ((A AND B)XOR C));

end Behavioral;

