--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
-- 
-- Create Date:    18:36:28 11/05/2015 
-- Design Name: 
-- Module Name:    DFF_MFG - Behavioral 
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

entity DFF_MFG is
PORT (D,CLK,IN_ZERO: IN STD_LOGIC;CLK_OUT,G,Q: OUT STD_LOGIC);
end DFF_MFG;

architecture Behavioral of DFF_MFG is

COMPONENT FG2 IS
PORT (A,B: IN STD_LOGIC ;P,Q: OUT STD_LOGIC);
END COMPONENT;

COMPONENT MFG IS
PORT (A,B,C: IN STD_LOGIC; P,Q,R: OUT STD_LOGIC);
END COMPONENT;

SIGNAL OUT_Q,MD_Q: STD_LOGIC;

begin
 
X1: MFG PORT MAP(CLK,D,OUT_Q,CLK_OUT,G,MD_Q);
X2: FG2 PORT MAP(MD_Q,IN_ZERO,Q,OUT_Q);

end Behavioral;

