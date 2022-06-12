--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
-- 
-- Create Date:    19:02:05 11/05/2015 
-- Design Name: 
-- Module Name:    MFG - Behavioral 
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

entity MFG is
PORT (A,B,C: IN STD_LOGIC; P,Q,R: OUT STD_LOGIC);
end MFG;

architecture Behavioral of MFG is

BEGIN

P<=A;
Q<=(((NOT A)AND B)XOR(A AND (NOT C)));
R<=((A AND B) XOR ((NOT A) AND C));
 
end Behavioral;

