LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY div_clk IS
	PORT(
		CLK_32768 : IN STD_LOGIC;
		RST : IN STD_LOGIC;
		BEEP : OUT STD_LOGIC
	);
	
END div_clk;


--  Architecture Body

ARCHITECTURE div_clk_architecture OF div_clk IS

	TYPE state_type is (do_m,re_m,mi_m,fa_m,sol_m,la_m,si_m,none);
	SIGNAL counter : INTEGER RANGE 0 TO 80 := 2;  --counter是用来找音调的
	SIGNAL beep_reg: STD_LOGIC := '0';

BEGIN
beep <= beep_reg;
beep_pro : process(CLK_32768)
	variable cnt : integer range 0 to 50 := 0;
begin 
	if (RISING_EDGE(CLK_32768)) then
		if (cnt = counter) then
			cnt := 0 ; 
			beep_reg <= not beep_reg;
		else
			cnt := cnt + 1 ;
		end if;
	end if;
end process beep_pro;
END div_clk_architecture;
