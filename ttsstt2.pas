uses aRecognition;
uses aTTSpeech;
uses crt;
var result,input:String;
       choice:integer;
procedure STT;
begin
     clrscr;
     writeln('Say something !');
     result:=speechToText;
     writeln('The text you was said: ',result);
     readln;
end;
procedure TTS;
begin
     clrscr;
     write('Input text here: ');
     readln(input);
     speak(input);
     readln;
     stopSpeak();
end;
begin
     clrscr;
     writeln('TTS And STT In Pascal By Ngoccoder');
     writeln('1. Speech To Text');
     writeln('2. Text To Speech');
     write('Input your choicr ');
     readln(choice);
     if choice = 1 then STT;
     if choice = 2 then TTS;
     readln;
end.
