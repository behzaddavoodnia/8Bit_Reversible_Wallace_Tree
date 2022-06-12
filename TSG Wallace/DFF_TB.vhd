--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
--
-- Create Date:   09:08:45 11/06/2015
-- Design Name:   
-- Module Name:   C:/Users/BEHZAD/Desktop/TSG_Wallace/DFF_TB.vhd
-- Project Name:  TSG_Wallace
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DFF_MFG
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
 
ENTITY DFF_TB IS
END DFF_TB;
 
ARCHITECTURE behavior OF DFF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DFF_MFG
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         IN_ZERO : IN  std_logic;
         CLK_OUT : OUT  std_logic;
         G : OUT  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic ;
   signal CLK : std_logic ;
   signal IN_ZERO : std_logic := '0';

 	--Outputs
   signal CLK_OUT : std_logic;
   signal G : std_logic;
   signal Q : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DFF_MFG PORT MAP (
          D => D,
          CLK => CLK,
          IN_ZERO => IN_ZERO,
          CLK_OUT => CLK_OUT,
          G => G,
          Q => Q
        );


  

END;
