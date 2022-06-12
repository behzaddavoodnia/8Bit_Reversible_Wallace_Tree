--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
-- 
-- Create Date:    22:47:02 06/21/2015 
-- Design Name: 
-- Module Name:    TG - Behavioral 
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

entity TG is
PORT (A,B,C: IN STD_LOGIC; P,Q,R: OUT STD_LOGIC);
end TG;

architecture Behavioral of TG is

begin
P<=A;
Q<=B;
R<=((A AND B) XOR C);
end Behavioral;

