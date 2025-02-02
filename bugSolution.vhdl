```vhdl
ENTITY my_entity IS
  GENERIC (RESET_VALUE : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"00");
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF my_entity IS
  SIGNAL internal_data : STD_LOGIC_VECTOR(7 DOWNTO 0) := RESET_VALUE;
BEGIN
  PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      internal_data <= RESET_VALUE;
    ELSIF rising_edge(clk) THEN
      internal_data <= data_in;
    END IF;
  END PROCESS;
  data_out <= internal_data; 
END ARCHITECTURE;
```