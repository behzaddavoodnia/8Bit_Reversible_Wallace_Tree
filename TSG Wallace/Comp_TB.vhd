--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
--
-- Create Date:   09:07:11 05/07/2015
-- Design Name:   
-- Module Name:   C:/Users/Naghsh/Desktop/VHDL/TSG_Wallace/Comp_TB.vhd
-- Project Name:  TSG_Wallace
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Compressor
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
 
ENTITY Comp_TB IS
END Comp_TB;
 
ARCHITECTURE behavior OF Comp_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Compressor
    PORT(
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         I3 : IN  std_logic;
         I4 : IN  std_logic;
         CIN : IN  std_logic;
         G1 : OUT  std_logic;
         G2 : OUT  std_logic;
         G3 : OUT  std_logic;
         G4 : OUT  std_logic;
         SUM : OUT  std_logic;
         CARRY : OUT  std_logic;
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I1 : std_logic := '1';
   signal I2 : std_logic := '1';
   signal I3 : std_logic := '1';
   signal I4 : std_logic := '1';
   signal CIN : std_logic := '0';

 	--Outputs
   signal G1 : std_logic;
   signal G2 : std_logic;
   signal G3 : std_logic;
   signal G4 : std_logic;
   signal SUM : std_logic;
   signal CARRY : std_logic;
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
-- 
--   constant <clock>_period : time := 10 ns;
-- 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Compressor PORT MAP (
          I1 => I1,
          I2 => I2,
          I3 => I3,
          I4 => I4,
          CIN => CIN,
          G1 => G1,
          G2 => G2,
          G3 => G3,
          G4 => G4,
          SUM => SUM,
          CARRY => CARRY,
          COUT => COUT
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
