library ieee;
use ieee.std_logic_1164.all;
--codificadorprioridad el que tiene más valor gana.
entity codificadorprioridad is
	port(
	e : in std_logic_vector(3 downto 0);
	s : out std_logic_vector(1 downto 0);
	i : out std_logic);
	
end codificadorprioridad;

architecture behavioral of codificadorprioridad is
begin
	--Esto tiene prioridad ya que la sentencia when else tiene prioridad 
	--la primera fila es la que gana.
	s<=
		"11" when e(3) = '1' else
		"10" when e(2) = '1' else
		"01" when e(1) = '1' else
		"00" when e(0) = '1' else
		"00";
	i<= '1' when e="0000" else '0';
end behavioral;
		