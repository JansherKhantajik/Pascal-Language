program Raphson;

uses Wincrt;
label  : 5 ;

var  n : integer;
     x0 , X1 ,d,fx0,fx1,t : real;

begin
     5: writeln(' Enter inital Guess value For X0 : ');
        readln(X0);

           Fx0 := x * x * x *x - 10 ;

               if fx0 < 0 then goto 5 ;

                     d : = 1.0 ;
                     n : = 0.0;
               while D >= 0.000001 do

                  begin
                    fx0 :=  x * x * x *x - 10 ;
                    fx1 := 4 * x * x * x - 1 ;
                    x1 := x - fx0 / fx1 ;
                    d  := abs ( x1 - x0 );
                    t := x0 ;

                    x0  := x1 ;
                    x1 := t;
                    n := n + 1 ;
                end;

            writeln( ' The no. of iterative is = ', n);
            writeln( ' Approximate root is X ' ,n, ' =' ,x:8:4);





readln;
end.
