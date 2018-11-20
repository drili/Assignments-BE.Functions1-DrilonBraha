drop function if exists isPrime//

create function isPrime(number int)
returns VARCHAR(10)
BEGIN
      declare isPrime int;
      declare divide int;

      if(number % 2 = 0 AND number > 2)
            then
            set isPrime = 0;
      else
            set isPrime = 1;
      end if;

      set divide = 3;

      while (divide <= floor(sqrt(number))) AND (isPrime = 1) do
      BEGIN
            if number % divide = 0
            then
            set isPrime = 0;
            set divide = divide + 2;
            end if;
      END;
      end while;
      return isPrime;
END;
