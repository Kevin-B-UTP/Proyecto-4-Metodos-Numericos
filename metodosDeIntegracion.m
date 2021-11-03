## MÉTODOS DE INTEGRACIÓN

    ## VARIABLES
    clc;
    opcion = 0  ;
    fin = 'FIN' ;
    opcion_general = 1;
    
    
    
          ##-------------------ENCABEZADO-----------------
          fprintf('\n__________________________________');
          fprintf('\n     MÉTODOS DE INTEGRACIONES');
          fprintf('\n__________________________________');
              
          ## ENTRADA---------------------------------------
          
          ##funcion
            fprintf('\n');
          funcion = input('Ingrese la Función = @(x) (funcion) : ');
          ##a y b
            fprintf('\n');
          a = input('Ingrese el valor de a : ');
            fprintf('\n');
          b = input('Ingrese el valor de b : ');
          
   ## CICLO GENERAL
   while( opcion_general == 1 )
          sumatoria = 0;
          aux = 0;
          ##menú 2-----------------------------
          fprintf('\n       MENÚ');
          fprintf('\n____________________');
          fprintf('\n1. Trapecio Simple');
          fprintf('\n____________________');
          fprintf('\n2. Trapecio Compuesto');
          fprintf('\n____________________');
          fprintf('\n3. Simpson');
          fprintf('\n____________________');
          fprintf('\n4. Simpson Compuesto');
          fprintf('\n____________________');
          fprintf('\n5. Simpson Compuesto 3/8');
          fprintf('\n____________________');
          fprintf('\n6. Salir del sub-menú');
          fprintf('\n____________________\n\n');
          opcion = input('Ingrese la opción requerida: ');
          
          ##CASOS--------------------------------------------------------------------------------------------
          switch (opcion)
            case 1
              
                   ## TRAPECIO SIMPLE--------------------------------------------------------------------
                      ##calculo
                      clc;
                      calculo = ( b - a ) *  ( ( feval(funcion, a) + feval(funcion, b) ) / 2 ) ;
                      fprintf('\n__________________________________________________________');
                      fprintf('\n\n Utilizando trapecio simple el resultado es : %10.9f\n\n', calculo);
                      fprintf('\n=======================================================================================\n');
            case 2

                   ## TRAPECIO COMPUESTO----------------------------------------------------------------
                      ## entrada de  n
                      fprintf('\n__________________________________________________________\n\n');
                      n = input('Ingrese el # de divisiones requeridas: ');
                      clc;
                      ## h 
                      h = ( b - a ) / n;
                      
                      aux = a ; 
                      
                      ##calculo
                      while ( aux <= b )
                        
                        if ( aux == a || aux == b )
                          sumatoria += feval ( funcion, aux );
                        else
                          sumatoria += 2 * (feval ( funcion, aux ));
                        endif
                        
                        aux += h;
                        
                      endwhile
                      
                     ## multiplicación
                      calculo = h / 2 * sumatoria; 
                      fprintf('\n______________________________________________________________________________');
                      fprintf('\n\n Utilizando trapecio compuesto resultado  con %2i divisiones  es: %10.9f\n\n', n, calculo);
                      fprintf('\n=======================================================================================\n');