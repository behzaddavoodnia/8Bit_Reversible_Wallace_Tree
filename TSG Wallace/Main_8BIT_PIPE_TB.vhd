--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
--
-- Create Date:   17:38:27 11/06/2015
-- Design Name:   
-- Module Name:   C:/Users/BEHZAD/Desktop/TSG_Wallace/Main_8BIT_PIPE_TB.vhd
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
 
ENTITY Main_8BIT_PIPE_TB IS
END Main_8BIT_PIPE_TB;
 
ARCHITECTURE behavior OF Main_8BIT_PIPE_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main_8bit
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         CLK : IN  std_logic;
         P_OUT : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');
   signal CLK : std_logic;

 	--Outputs
   signal P_OUT : std_logic_vector(15 downto 0);


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main_8bit PORT MAP (
          X => X,
          Y => Y,
          CLK => CLK,
          P_OUT => P_OUT
        );

 

END;
