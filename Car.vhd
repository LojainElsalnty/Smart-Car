library ieee;
use ieee.std_logic_1164.all; 

entity Car is port(
	obstacle : in std_logic;
	linetrack : in std_logic;
	motorcontrol : out std_logic;
	segment1,segment2,segment3,segment4,segment5 : out std_logic_vector(1 to 7));
end Car;

architecture behaviour of Car is begin
process(obstacle, linetrack)
begin
	if obstacle='1' then
		motorcontrol<='1';
	else
		motorcontrol<='0';
	end if;
	if linetrack='1' then
		segment1<="1111111";
		segment2<="1111111";
		segment3<="1111111";
		segment4<="1111111";
		segment5<="1111111";
	else
		segment1<="0001000";
		segment2<="1110001";
		segment3<="0110000";
		segment4<="0001000";
		segment5<="1110000";
	end if;
	end process;
end behaviour;