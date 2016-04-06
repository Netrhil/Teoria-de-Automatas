use strict;
use warnings; 
use feature qw/switch/; 
my $Menu = 1 ; 
while ($Menu){
 
print "           Validador de expresion regular  \n\n"; 
print "                    a) a+ \n"; 
print "                    b) a* \n"; 
print "                    c) a+b* \n"; 
print "                    d) b*a* \n";
print "                    e) Salir  \n\n"; 
print "                      ";   
my $Opcion = <STDIN> ;
my $Palabra ;
given($Opcion) {
    when (/^a$/) { 
        print " Escriba la palabra :  ";
        $Palabra = <STDIN> ;
        if($Palabra=~ m/^(a+)$/){
	print "           La palabra pertenece al lenguaje \n\n"; 
	}
	else{
		print "           La palabra no pertenece al lenguaje \n\n"; 
	}
        
        }
    when (/^b$/) { print " Escriba la palabra :  ";
        $Palabra = <STDIN> ;
        if($Palabra=~ m/^(a*)$/){
	print "           La palabra pertenece al lenguaje \n\n"; 
	}
	else{
		print "           La palabra no pertenece al lenguaje \n\n"; 
	}
	
	}
    when (/^c$/) { 
	     $Palabra = <STDIN> ;
        if($Palabra=~ m/^(a+b*)$/){
	print "           La palabra pertenece al lenguaje \n\n"; 
	}
	else{
		print "           La palabra no pertenece al lenguaje \n\n"; 
	}
	
	}
	     
    when (/^d$/) {  $Palabra = <STDIN> ;
        if($Palabra=~ m/^(b*a*)$/){
	print "           La palabra pertenece al lenguaje \n\n"; 
	}
	else{
		print "           La palabra no pertenece al lenguaje \n\n"; 
	}
	
	} 
    when (/^e$/) { $Menu = 0; }
   
    default       { print "         Opcion Invalida  \n\n"; }
    }
}



