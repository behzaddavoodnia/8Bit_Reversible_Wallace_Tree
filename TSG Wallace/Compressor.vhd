--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
-- 
-- Create Date:    06:52:54 05/06/2015 
-- Design Name: 
-- Module Name:    Compressor - Behavioral 
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

entity Compressor is
PORT(I1,I2,I3,I4,CIN:IN STD_LOGIC;
G1,G2,G3,G4,SUM,CARRY,COUT:OUT STD_LOGIC);
end Compressor;


architecture Behavioral of Compressor is

begin
G1<=I2;
G2<=(I2 XOR I3);
G3<=CIN;
G4<=(CIN XOR I1);
SUM<=(CIN XOR I1 XOR I2 XOR I3 XOR I4);
CARRY<=(((CIN XOR I1)AND (I2 XOR I3 XOR I4))XOR(CIN AND I1));
COUT<=(((I2 XOR I3)AND I4) XOR (I2 AND I3));
end Behavioral;

