program coffee;
uses crt;
var value,coffee,sugar,cup,milk:integer; a:boolean; c,c1:char; s:string; n,code:integer;
 
procedure shop(var c:char; var coffee,value:integer; var a:boolean);
        begin
                case c of
                        '1': begin value:=value+20; coffee:=1; a:=true; end;
                        '2': begin value:=value+30; coffee:=2; a:=true; end;
                        '3': begin value:=value+30; coffee:=3; a:=true; end;
                        '4': begin value:=value+35; coffee:=4; a:=true; end
                else
                        begin
                                writeln('Not readable.Please try again');
                        end;
                end;
        end;
        
procedure sug(var c:char; var sugar,value:integer; var a:boolean);
        begin
                case c of
                        '1': begin value:=value+10; sugar:=1; a:=true; end;
                        '2': begin sugar:=0; a:=true; end;
                        
                else
                        begin
                                writeln('Not readable.Please try again');
                        end;
                end;
        end;

procedure mil(var c:char; var milk,value:integer; var a:boolean);
        begin
                case c of
                        '1': begin value:=value+10; milk:=1; a:=true; end;
                        '2': begin milk:=0; a:=true; end;
                        
                else
                        begin
                                writeln('Not readable.Please try again');
                        end;
                end;
        end; 

procedure cu(var c:char; var cup,value:integer; var a:boolean);
        begin
                case c of
                        '1': begin value:=value+5; cup:=1; a:=true; end;
                        '2': begin cup:=0; a:=true; end;
                        
                else
                        begin
                                writeln('Not readable.Please try again');
                        end;
                end;
        end;        
begin
        clrscr;
        writeln('Choose a coffee');
        writeln('1 Americano');
        writeln('2 Espresso');
        writeln('3 Cappuccino');
        writeln('4 Kakao');
        a:=false;
        value:=0;
        coffee:=0;
        while (a=false) do
                begin
                        readln(c);
                        shop(c,coffee,value,a);
                end;
                
        writeln('With sugar?');
        writeln('1 - yes');
        writeln('2 - no');
        sugar:=0;
        a:=false;
        while (a=false) do
                begin
                        readln(c1);
                        sug(c1,sugar,value,a);
                end;
                writeln('Add a milk?');
        writeln('1 - yes');
        writeln('2 - no');
        milk:=0;
        a:=false;
        while (a=false) do
                begin
                        readln(c);
                        sug(c,milk,value,a);
                end;
                writeln('With a cup?');
         writeln('1 - yes');
        writeln('2 - no');
        cup:=0;
        a:=false;
        while (a=false) do
                begin
                        readln(c);
                        sug(c,cup,value,a);
                end;
                writeln;
        If (coffee=1) then
          write('Your order: Americano ')
          else if (coffee=2) then write('Your order: Espresso ')
          else if (coffee=3) then write('Your order: Cappuccino ')
          else write('Your order: Kakao ');
        If (milk=1) then
        write('with milk,') else write('without milk,');
        If (sugar=1) then write(' with sugar,') else write(' without sugar,');
        If (cup=1) then write(' with cup.') else write(' without cup. ');writeln;
        writeln('Total cost: ',value,' dollars. How much money did you put in automat?');
        repeat
        readln(s);
        val(s,n,code);
        If (code<>0) then
        writeln('Not readable.Please try again');
        If (n<value) then writeln('Too small.Please try again');
        until ((code=0) and (n>=value));
        writeln('Your change: ',n-value,'dol.');
        end.
