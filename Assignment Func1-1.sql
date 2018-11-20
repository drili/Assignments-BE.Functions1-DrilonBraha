drop function if exists fib//

create function fib(end int)
returns varchar(255)
BEGIN
      declare a int;
      declare b int;
      declare fib int;
      declare counter int;
      declare fstring varchar(255);

      set end = end - 2;
      set a = 0;
      set b = 1;
      set fib = 0;
      set counter = 0;

      while (counter < end) do
      BEGIN
            set fib = a + b;
            set a = b;
            set b = fib;
            set counter = counter + 1;
      END;
      end while;
      return fib;
END;
