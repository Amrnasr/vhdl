architecture rtl of stepper_motor is

type my_state is(idle,state0,state1,state2,state3);--,state4,state5,state6,state7,state8,state9,state10 ,state11,state12,state13,state14,state15,state16,s tate17,state18
signal present_state,next_state :my_state;

begin
process(rst,clk,en)
begin
if(rst = '1' and en='0') then
present_state <= idle;
elsif(clk='1' and clk'event and en='1') then
present_state <= next_state;
end if;
end process;
--
--process(present_state,direction,en)
--begin 
--case(present_state) is
--
--when idle =>
-- next_state <= state0;
--
--when state0 =>
-- if(direction='0'and en='1') then
-- dout <= "1001";
-- next_state <= state1; 
-- elsif(direction='1') then
-- dout <= "0101";
-- elsif(en='0') then
-- next_state <= present_state;
-- end if;
-- 
--when state1 =>
-- if(direction='0' and en='1') then
-- dout <= "1010";
-- next_state <= state2; 
-- elsif(direction='1' and en='1') then
-- next_state <= state0;
-- elsif(en='0') then
-- next_state <= present_state;
-- end if;
--
--when state2 =>
-- if(direction='0'and en='1') then
-- dout <= "0110"; 
-- next_state <= state3; 
-- elsif(direction='1'and en='1') then
-- next_state <= state1;
-- elsif(en='0') then
-- next_state <= present_state;
--  end if;
--	
--when state3 =>
-- if(direction='0'and en='1') then
-- dout <= "0101";
-- next_state <= state4; 
-- elsif(direction='1'and en='1') then
-- next_state <= state2;
-- 
-- elsif(en='0') then
-- next_state <=state3;
--	 end if;
--when state4 =>
-- if(direction='0'and en='1') then
-- dout <= "1001"; 
-- next_state <= state0; 
-- elsif(direction='1'and en='1') then
-- next_state <= state3;
--	 elsif(en='0') then
-- next_state <=present_state;
-- end if;
-- 
----	
----when state5 =>
---- if(direction='0'and en='1') then
---- dout <= "0110"; 
---- next_state <= state6; 
---- elsif(direction='1'and en='1') then
---- next_state <= state4;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state6 =>
---- if(direction='0'and en='1') then
---- dout <= "0101"; 
---- next_state <= state7;
---- elsif(direction='1'and en='1') then
---- next_state <= state5;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state7 =>
---- if(direction='0'and en='1') then
---- dout <= "1001";
---- next_state <= state8; 
---- elsif(direction='1'and en='1') then
---- next_state <= state6;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state8 =>
---- if(direction='0'and en='1') then
---- dout <= "0110"; 
---- next_state <= state9; 
---- elsif(direction='1'and en='1') then
---- next_state <= state7;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state9 =>
---- if(direction='0'and en='1') then
---- dout <= "0101"; 
---- next_state <= state10; 
---- elsif(direction='1'and en='1') then
---- next_state <= state8;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state10 =>
---- if(direction='0'and en='1') then
---- dout <= "1001"; 
---- next_state <= state11; 
---- elsif(direction='1'and en='1') then
---- next_state <= state9;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state11 =>
---- if(direction='0'and en='1') then
---- dout <= "0110"; 
---- next_state <= state12; 
---- elsif(direction='1'and en='1') then
---- next_state <= state10;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state12 =>
---- if(direction='0'and en='1') then
---- dout <= "0101"; 
---- next_state <= state13; 
---- elsif(direction='1'and en='1') then
---- next_state <= state11;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state13 =>
---- if(direction='0'and en='1') then
---- dout <= "1001"; 
---- next_state <= state14; 
---- elsif(direction='1'and en='1') then
---- next_state <= state12;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state14 =>
---- if(direction='0'and en='1') then
---- dout <= "0110"; 
---- next_state <= state15; 
---- elsif(direction='1'and en='1') then
---- next_state <= state13;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state15 =>
---- if(direction='0'and en='1') then
---- dout <= "0101"; 
---- next_state <= state16; 
---- elsif(direction='1'and en='1') then
---- next_state <= state14;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state16 =>
---- if(direction='0'and en='1') then
---- dout <= "1001"; 
---- next_state <= state17; 
---- elsif(direction='1'and en='1') then
---- next_state <= state15;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state17 =>
---- if(direction='0'and en='1') then
---- dout <= "0110"; 
---- next_state <= state18; 
---- elsif(direction='1'and en='1') then
---- next_state <= state16;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
---- 
----	
----when state18 =>
---- if(direction='0'and en='1') then
---- dout <= "0101"; 
---- next_state <= idle; 
---- elsif(direction='1'and en='1') then
---- next_state <= state17;
----	 elsif(en='0') then
---- next_state <=present_state;
---- end if;
--
--
--end case;
--end process;
--end rtl; 
--	

process(present_state,direction)
begin 

case(present_state) is

when idle =>
if(en='0') then
next_state<=present_state;
else next_state <= state0;
end if;


when state0 =>
dout <= "0101"; 
next_state <= state1;

when state1 =>
if(direction='0') then
dout <= "1001"; 
elsif(direction='1') then
dout <= "0110";
end if;
next_state <= state2;

when state2 =>
dout <= "1010"; 
next_state <= state3;

when state3 =>
if(direction='0') then 
dout <= "0110"; 
elsif(direction='1') then 
dout <= "1001";
end if; 
next_state <= state0;
end case;
end process;
end rtl; 
