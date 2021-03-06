--------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia
--
-- Create Date:   15:15:02 05/05/2015
-- Design Name:   
-- Module Name:   C:/Users/Naghsh/Desktop/VHDL/TSG_Wallace/TSG_TB.vhd
-- Project Name:  TSG_Wallace
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TSG
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
 
ENTITY TSG_TB IS
END TSG_TB;
 
ARCHITECTURE behavior OF TSG_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TSG
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         P : OUT  std_logic;
         Q : OUT  std_logic;
         R : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '1';
   signal B : std_logic := '1';
   signal C : std_logic := '1';
   signal D : std_logic := '1';

 	--Outputs
   signal P : std_logic;
   signal Q : std_logic;
   signal R : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TSG PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          P => P,
          Q => Q,
          R => R,
          S => S
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

      -- insert stimulus here 

     -- wait;
--   end process;

END;
