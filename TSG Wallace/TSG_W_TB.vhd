--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
--
-- Create Date:   22:19:44 06/21/2015
-- Design Name:   
-- Module Name:   C:/Users/Naghsh/Desktop/VHDL/TSG_Wallace/TSG_W_TB.vhd
-- Project Name:  TSG_Wallace
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Main_8bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TSG_W_TB IS
END TSG_W_TB;
 
ARCHITECTURE behavior OF TSG_W_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main_8bit
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         P : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main_8bit PORT MAP (
          X => X,
          Y => Y,
          P => P
        );



END;
