----------------------------------------------------------------------------------
-- Company: Sharif University of Technology
-- Engineer: Behzad Davoodnia (behzad.davoodnia@sharif.edu)
-- 
-- Create Date:    15:04:12 05/12/2015 
-- Design Name: 
-- Module Name:    Main_8bit - Behavioral 
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

entity Main_8bit is
port(X,Y :IN STD_LOGIC_VECTOR (7 DOWNTO 0);
     CLK :IN STD_LOGIC;
     P_OUT :OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	  );
end Main_8bit;


architecture Behavioral of Main_8bit is
-----------------------------------------------------
SIGNAL S,C:STD_LOGIC_VECTOR (31 DOWNTO 1); 
SIGNAL MD_CARRY : STD_LOGIC_VECTOR (28 DOWNTO 0); 
SIGNAL S_OUT_1,C_OUT_1 : STD_LOGIC_VECTOR(18 DOWNTO 1);
SIGNAL S_OUT_2,C_OUT_2 : STD_LOGIC_VECTOR(31 DOWNTO 19);
SIGNAL S1_OUT_2,XY1_00,XY1_04,XY1_73,XY1_77,XY2_00 : STD_LOGIC;
SIGNAL P: STD_LOGIC_VECTOR(15 DOWNTO 0);
-----------------------------------------------------
COMPONENT TSG IS
PORT (A,B,C,D: IN STD_LOGIC; P,Q,R,S: OUT STD_LOGIC);
END COMPONENT;
-------------------------------------------------------
COMPONENT COMPRESSOR IS
PORT (I1,I2,I3,I4,CIN:IN STD_LOGIC;
G1,G2,G3,G4,SUM,CARRY,COUT:OUT STD_LOGIC);
END COMPONENT;
------------------------------------------------------
COMPONENT FG IS
PORT (A,B,C: IN STD_LOGIC; P,Q,R: OUT STD_LOGIC);
END COMPONENT;
---------------------------------------------------------------
COMPONENT DFF_MFG IS
PORT (D,CLK,IN_ZERO: IN STD_LOGIC;CLK_OUT,G,Q: OUT STD_LOGIC); 
END COMPONENT;
---------------------------------------------------------------
type MATRIX is array (7 downto 0) of STD_LOGIC_VECTOR(7 DOWNTO 0);
signal XY : MATRIX;
begin
----------------------------------------------------------------

GX1: FOR I IN 0 TO 7 GENERATE
 CX1: FG PORT MAP(X(0),Y(I),'0',OPEN,OPEN,XY(0)(I));
END GENERATE;

GX2: FOR J IN 0 TO 7 GENERATE
 CX2: FG PORT MAP(X(1),Y(J),'0',OPEN,OPEN,XY(1)(J));
END GENERATE;

GX3: FOR K IN 0 TO 7 GENERATE
 CX3: FG PORT MAP(X(2),Y(K),'0',OPEN,OPEN,XY(2)(K));
END GENERATE;

GX4: FOR L IN 0 TO 7 GENERATE
 CX4: FG PORT MAP(X(3),Y(L),'0',OPEN,OPEN,XY(3)(L));
END GENERATE;

GX5: FOR M IN 0 TO 7 GENERATE
 CX5: FG PORT MAP(X(4),Y(M),'0',OPEN,OPEN,XY(4)(M));
END GENERATE;

GX6: FOR N IN 0 TO 7 GENERATE
 CX6: FG PORT MAP(X(5),Y(N),'0',OPEN,OPEN,XY(5)(N));
END GENERATE;

GX7: FOR O IN 0 TO 7 GENERATE
 CX7: FG PORT MAP(X(6),Y(O),'0',OPEN,OPEN,XY(6)(O));
END GENERATE;

GX8: FOR P IN 0 TO 7 GENERATE
 CX8: FG PORT MAP(X(7),Y(P),'0',OPEN,OPEN,XY(7)(P));
END GENERATE;

------------------------------------------SEGMENT 1 -------------------------------------------------------------

X1: TSG PORT MAP('0',XY(1)(0),'0',XY(0)(1),OPEN,OPEN,S(1),C(1));
X2: TSG PORT MAP(XY(2)(0),XY(1)(1),'0',XY(0)(2),OPEN,OPEN,S(2),C(2));
X3: COMPRESSOR PORT MAP(XY(3)(0),XY(2)(1),XY(1)(2),XY(0)(3),'0',OPEN,OPEN,OPEN,OPEN,S(3),C(3),MD_CARRY(0));
X4: COMPRESSOR PORT MAP(XY(4)(0),XY(3)(1),XY(2)(2),XY(1)(3),MD_CARRY(0),OPEN,OPEN,OPEN,OPEN,S(4),C(4),MD_CARRY(1));
X5: COMPRESSOR PORT MAP(XY(5)(0),XY(4)(1),XY(3)(2),XY(2)(3),MD_CARRY(1),OPEN,OPEN,OPEN,OPEN,S(5),C(5),MD_CARRY(2));
X6: COMPRESSOR PORT MAP(XY(6)(0),XY(5)(1),XY(4)(2),XY(3)(3),MD_CARRY(2),OPEN,OPEN,OPEN,OPEN,S(6),C(6),MD_CARRY(3));
X7: COMPRESSOR PORT MAP(XY(7)(0),XY(6)(1),XY(5)(2),XY(4)(3),MD_CARRY(3),OPEN,OPEN,OPEN,OPEN,S(7),C(7),MD_CARRY(4));
X8: COMPRESSOR PORT MAP('0',XY(7)(1),XY(6)(2),XY(5)(3),MD_CARRY(4),OPEN,OPEN,OPEN,OPEN,S(8),C(8),MD_CARRY(5));
X9: TSG PORT MAP(MD_CARRY(5),XY(7)(2),'0',XY(6)(3),OPEN,OPEN,S(9),C(9));
-------------------------------------------------------------------------------------------------------------------------------------
X10: TSG PORT MAP('0',XY(1)(4),'0',XY(0)(5),OPEN,OPEN,S(10),C(10));
X11: TSG PORT MAP(XY(2)(4),XY(1)(5),'0',XY(0)(6),OPEN,OPEN,S(11),C(11));
X12: COMPRESSOR PORT MAP(XY(3)(4),XY(2)(5),XY(1)(6),XY(0)(7),'0',OPEN,OPEN,OPEN,OPEN,S(12),C(12),MD_CARRY(6));
X13: COMPRESSOR PORT MAP(XY(4)(4),XY(3)(5),XY(2)(6),XY(1)(7),MD_CARRY(6),OPEN,OPEN,OPEN,OPEN,S(13),C(13),MD_CARRY(7));
X14: COMPRESSOR PORT MAP(XY(5)(4),XY(4)(5),XY(3)(6),XY(2)(7),MD_CARRY(7),OPEN,OPEN,OPEN,OPEN,S(14),C(14),MD_CARRY(8));
X15: COMPRESSOR PORT MAP(XY(6)(4),XY(5)(5),XY(4)(6),XY(3)(7),MD_CARRY(8),OPEN,OPEN,OPEN,OPEN,S(15),C(15),MD_CARRY(9));
X16: COMPRESSOR PORT MAP(XY(7)(4),XY(6)(5),XY(5)(6),XY(4)(7),MD_CARRY(9),OPEN,OPEN,OPEN,OPEN,S(16),C(16),MD_CARRY(10));
X17: COMPRESSOR PORT MAP('0',XY(7)(5),XY(6)(6),XY(5)(7),MD_CARRY(10),OPEN,OPEN,OPEN,OPEN,S(17),C(17),MD_CARRY(11));
X18: TSG PORT MAP(MD_CARRY(11),XY(7)(6),'0',XY(6)(7),OPEN,OPEN,S(18),C(18));
-----------------------------------------------------------------------------------------------------------------
------------------------------------------REG.FILE 1-------------------------------------------------------------
GX9: FOR U IN 1 TO 18 GENERATE
 CX9: DFF_MFG PORT MAP(S(U),CLK,'0',OPEN,OPEN,S_OUT_1(U));
CX10: DFF_MFG PORT MAP(C(U),CLK,'0',OPEN,OPEN,C_OUT_1(U));
END GENERATE;

REGXY1: DFF_MFG PORT MAP(XY(0)(0),CLK,'0',OPEN,OPEN,XY1_00);
REGXY2: DFF_MFG PORT MAP(XY(0)(4),CLK,'0',OPEN,OPEN,XY1_04);
REGXY3: DFF_MFG PORT MAP(XY(7)(3),CLK,'0',OPEN,OPEN,XY1_73);
REGXY4: DFF_MFG PORT MAP(XY(7)(7),CLK,'0',OPEN,OPEN,XY1_77);
----------------------------------------------------------------------------------------------------------------- 
--------------------------------------------SEGMENT 2 ------------------------------------------------------------------------------------
X19: TSG PORT MAP('0',S_OUT_1(2),'0',C_OUT_1(1),OPEN,OPEN,S(19),C(19));
X20: TSG PORT MAP('0',S_OUT_1(3),'0',C_OUT_1(2),OPEN,OPEN,S(20),C(20));
X21: TSG PORT MAP(S_OUT_1(4),C_OUT_1(3),'0',XY1_04,OPEN,OPEN,S(21),C(21));
X22: TSG PORT MAP(S_OUT_1(5),C_OUT_1(4),'0',S_OUT_1(10),OPEN,OPEN,S(22),C(22));
X23: COMPRESSOR PORT MAP(S_OUT_1(6),C_OUT_1(5),S_OUT_1(11),C_OUT_1(10),'0',OPEN,OPEN,OPEN,OPEN,S(23),C(23),MD_CARRY(12));
X24: COMPRESSOR PORT MAP(S_OUT_1(7),C_OUT_1(6),S_OUT_1(12),C_OUT_1(11),MD_CARRY(12),OPEN,OPEN,OPEN,OPEN,S(24),C(24),MD_CARRY(13));
X25: COMPRESSOR PORT MAP(S_OUT_1(8),C_OUT_1(7),S_OUT_1(13),C_OUT_1(12),MD_CARRY(13),OPEN,OPEN,OPEN,OPEN,S(25),C(25),MD_CARRY(14));
X26: COMPRESSOR PORT MAP(S_OUT_1(9),C_OUT_1(8),S_OUT_1(14),C_OUT_1(13),MD_CARRY(14),OPEN,OPEN,OPEN,OPEN,S(26),C(26),MD_CARRY(15));
X27: COMPRESSOR PORT MAP(XY1_73,C_OUT_1(9),S_OUT_1(15),C_OUT_1(14),MD_CARRY(15),OPEN,OPEN,OPEN,OPEN,S(27),C(27),MD_CARRY(16));
X28: TSG PORT MAP(MD_CARRY(16),S_OUT_1(16),'0',C_OUT_1(15),OPEN,OPEN,S(28),C(28));
X29: TSG PORT MAP('0',S_OUT_1(17),'0',C_OUT_1(16),OPEN,OPEN,S(29),C(29));
X30: TSG PORT MAP('0',S_OUT_1(18),'0',C_OUT_1(17),OPEN,OPEN,S(30),C(30));
X31: TSG PORT MAP('0',XY1_77,'0',C_OUT_1(18),OPEN,OPEN,S(31),C(31));
-------------------------------------------------------------------------------------------------------------------------
------------------------------------------REG.FILE 2 --------------------------------------------------------------------
GX10: FOR V IN 19 TO 31 GENERATE
 CX11: DFF_MFG PORT MAP(S(V),CLK,'0',OPEN,OPEN,S_OUT_2(V));
 CX12: DFF_MFG PORT MAP(C(V),CLK,'0',OPEN,OPEN,C_OUT_2(V));
END GENERATE;

REGXY5: DFF_MFG PORT MAP(XY1_00,CLK,'0',OPEN,OPEN,XY2_00);
REGS: DFF_MFG PORT MAP(S_OUT_1(1),CLK,'0',OPEN,OPEN,S1_OUT_2);
------------------------------------------SEGMENT 3 -----------------------------------------------------------------------------------------
X32: TSG PORT MAP(C_OUT_2(19),S_OUT_2(20),'0','0',OPEN,OPEN,P(3),MD_CARRY(17));
X33: TSG PORT MAP(C_OUT_2(20),S_OUT_2(21),'0',MD_CARRY(17),OPEN,OPEN,P(4),MD_CARRY(18));
X34: TSG PORT MAP(C_OUT_2(21),S_OUT_2(22),'0',MD_CARRY(18),OPEN,OPEN,P(5),MD_CARRY(19));
X35: TSG PORT MAP(C_OUT_2(22),S_OUT_2(23),'0',MD_CARRY(19),OPEN,OPEN,P(6),MD_CARRY(20));
X36: TSG PORT MAP(C_OUT_2(23),S_OUT_2(24),'0',MD_CARRY(20),OPEN,OPEN,P(7),MD_CARRY(21));
X37: TSG PORT MAP(C_OUT_2(24),S_OUT_2(25),'0',MD_CARRY(21),OPEN,OPEN,P(8),MD_CARRY(22));
X38: TSG PORT MAP(C_OUT_2(25),S_OUT_2(26),'0',MD_CARRY(22),OPEN,OPEN,P(9),MD_CARRY(23));
X39: TSG PORT MAP(C_OUT_2(26),S_OUT_2(27),'0',MD_CARRY(23),OPEN,OPEN,P(10),MD_CARRY(24));
X40: TSG PORT MAP(C_OUT_2(27),S_OUT_2(28),'0',MD_CARRY(24),OPEN,OPEN,P(11),MD_CARRY(25));
X41: TSG PORT MAP(C_OUT_2(28),S_OUT_2(29),'0',MD_CARRY(25),OPEN,OPEN,P(12),MD_CARRY(26));
X42: TSG PORT MAP(C_OUT_2(29),S_OUT_2(30),'0',MD_CARRY(26),OPEN,OPEN,P(13),MD_CARRY(27));
X43: TSG PORT MAP(C_OUT_2(30),S_OUT_2(31),'0',MD_CARRY(27),OPEN,OPEN,P(14),MD_CARRY(28));
X44: TSG PORT MAP(C_OUT_2(31),'0','0',MD_CARRY(28),OPEN,OPEN,P(15),OPEN);

-----------------------------------------------------------------------------
P(0)<=XY2_00;
P(1)<=S1_OUT_2;
P(2)<=S_OUT_2(19);
------------------------------------------------------------------------
GX11: FOR W IN 0 TO 15 GENERATE
 CX13: DFF_MFG PORT MAP(P(W),CLK,'0',OPEN,OPEN,P_OUT(W));
END GENERATE;
-----------------------------------------------------------------------

end Behavioral;

