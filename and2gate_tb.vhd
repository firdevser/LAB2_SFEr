----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2021 14:52:26
-- Design Name: 
-- Module Name: and2gate_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and2gate_tb is
--  Port ( );
end and2gate_tb;

architecture test_gate of and2gate_tb is

component and2gate is
 port (
 A : in std_logic;
 B : in std_logic;
 F : out std_logic
 );
end component;
signal A_t : std_logic := '0';
signal B_t : std_logic := '0';
signal F_t : std_logic;

begin

UUT: and2gate port map (
 A => A_t,
 B => B_t,
 F => F_t
 );
process begin
 A_t <= '0';
 B_t <= '0';
 wait for 1 ns;
 A_t <= '0';
 B_t <= '1';
 wait for 1 ns;
 A_t <= '1';
 B_t <= '0';
 wait for 1ns;
 A_t <= '1';
 B_t <= '1';
 wait;
end process;

end test_gate;
