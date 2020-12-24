program Ruglafalsi;

var
    x0,x1,p,fx0,fx1, temp ,x2,fx2    :   real ;


begin
     (******************* input Module ******************)

    repeat

     writeln('Enter X0 : ');
     readln(x0);

     writeln('Enter X1 : ');
     readln(x1);


     fx0 := x0 * x0 + 9 * x0 + 14;
     fx1 := x1 * x1 + 9 * x1 + 14;

     p := fx0 * fx1 ;

     until ( p < 0 );

     (******************* End of Input ******************)
     (**************** Swapping  Module *****************)

     if ( fx0 < 0.0 ) then

        begin
            temp := x0 ;
            x0 := x1 ;
            x1 := temp ;

            temp := fx0 ;
            fx0 := fx1 ;
            fx1 := temp ;
         end;
      (******************* End of swapping ******************)
     (**************** Itretive  Module *****************)
     begin
         repeat
              X2 := x0 - (fx0 * ( x0 - x1 )) / ( fx0 - fx1 );

              fx2 := x2 * x2 + 9 * x2 + 14;
          until ( fx2 <> 0 );

          if fx2 > 0 then
              X2 := x0
          else
              x2 := x1;
          (******************* End of Itretion ******************)
          (**************** out put  Module *****************)

          writeln( ' Root Apporoxmitionaly : ' , x2) ;

readln;
end.
