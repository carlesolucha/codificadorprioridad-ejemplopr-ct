--¿Qué pasa si mi abuel@ pulsa dos botones? Quiero que el sistema coja solamente el mayor de ambos.
library ieee;
use ieee.std_logic_1164.all;
--codificadorprioridad el que tiene más valor gana.
entity ejcodificadorprioridadmay is
	port(
	e : in std_logic_vector(7 downto 0);
	s : out std_logic_vector(2 downto 0);
	i : out std_logic);
	
end ejcodificadorprioridadmay;

architecture behavioral of ejcodificadorprioridadmay is
begin
	--Esto tiene prioridad ya que la sentencia when else tiene prioridad 
	--la primera fila es la que gana.
	s<=
		"111" when e(7) = '1' else
		"110" when e(6) = '1' else
		"101" when e(5) = '1' else
		"100" when e(4) = '1' else
		"011" when e(3) = '1' else
		"010" when e(2) = '1' else
		"001" when e(1) = '1' else
		"000" when e(0) = '1' else
		"000";
	i<= '1' when e="00000000" else '0';
end behavioral;
		