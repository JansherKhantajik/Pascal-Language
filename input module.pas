program bisection;

var
     x0,x1,x2,fx0,fx1,fx2,p,temp,i   :   real;

begin
       (**************input module ************)


        repeat
         writeln(' Enter X0  : ');
         readLn(x0);

         writeln(' Enter X1 :');
         readLn(x1);

         fx0:= X0 * x0 - 9 *x0 + 14;

         fx1:= X1 * x1 - 9 *x1 + 14;

         P:= fx0 * fx1 ;
         until ( p < 0.0 );


         (***************End of Input ***************)
         (************* swapping module *************)

         if  ( fx0 < 0.0 ) then

         begin
                 temp := X0;
                 x0 :=   x1 ;
                 x1 :=   temp;

                 temp := fX0;
                 fx0 :=   fx1 ;
                 fx1 :=   temp;

         end;

         (***************End of swapping ***************)
         (************* Itreation  module *************)

          repeat

                x2 := ( x0 + x1 )  / 2 ;
                fx2:= x2 * x2 - 9 * x2 + 14;

                    if ( fx2 > 0 ) then
                        X2:= x0
                    else
                        X2 := x1 ;

           until ( fx2 = 0.0 );

         (***************End of swapping ***************)
         (************* out put  module *************)

         Writeln( ' The root Is : ' , X2 : 4 :2 );


readln;
end.

