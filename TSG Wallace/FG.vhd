--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
-- 
-- Create Date:    09:09:56 06/28/2015 
-- Design Name: 
-- Module Name:    FG - Behavioral 
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

entity FG is
PORT (A,B,C: IN STD_LOGIC; P,Q,R: OUT STD_LOGIC);
end FG;

architecture Behavioral of FG is

begin
P<=A;
Q<=(((NOT A) AND B) OR (A AND C));
R<=(( A AND B) OR ((NOT A) AND C));

end Behavioral;

