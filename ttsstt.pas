uses aRecognition;
uses aTTSpeech;
uses crt;
var result,input:String;
      chonngonngu,luachonmenu,setting_choice,lua_chon,choice:integer;
procedure settingen;
begin
    writeln('1. Back To The Menu.');
    writeln('2. Change Language.');
    writeln('3. Exit.');
    write('Hay Nhap Lua Chon: ');
    readln(lua_chon);
    if setting_choice = 1 then menuen;
    if setting_choice = 2 then settingvn;
    if setting_choice = 3 then break;
end;
procedure settingvn2;
begin
    writeln('1. Quay tro lai Menu chinh');
    writeln('2. Doi Ngon Ngu.');'
    writeln('3. Thoat.');
    write('Hay Nhap Lua Chon: ');
    readln(lua_chon);
    if lua_chon = 1 then menuvn;
    if lua_chon = 2 then settingen2;
    if lua_chon = 3 then break;
end;
procedure settingvn;
begin
    writeln('1. Quay tro lai Menu chinh');
    writeln('2. Doi Ngon Ngu.');'
    writeln('3. Thoat.');
    write('Hay Nhap Lua Chon: ');
    readln(lua_chon);
    if lua_chon = 1 then menuvn;
    if lua_chon = 2 then settingen2;
    if lua_chon = 3 then break;
end;
procedure settingen;
begin
    writeln('1. Back To The Menu.');
    writeln('2. Change Language.');
    writeln('3. Exit.');
    write('Hay Nhap Lua Chon: ');
    readln(lua_chon);
    if setting_choice = 1 then menuen;
    if setting_choice = 2 then settingvn;
    if setting_choice = 3 then break;
end;
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
procedure menuvn;
begin
     clrscr;
     writeln('Cong Cu TTS Va STT By Ngoccoder ');
     writeln('1. Chuyen Giong Noi Thanh Van Ban.');
     writeln('2. Chuyen Van Ban Thanh Giong Noi.');
     writeln('3. Cai Dat.');
     write('Nhap lua chon cua ban: ');
     readln(choice);
     if luachonmenu = 1 then STT;
     if luachonmenu = 2 then TTS;
     if luachonmenu = 3 then settingvn;
end.
procedure menuen;
begin
     clrscr;
     writeln('TTS And STT In Pascal By Ngoccoder.');
     writeln('1. Speech To Text.');
     writeln('2. Text To Speech.');
     writeln('3. Setting.')
     write('Input your choicr ');
     readln(choice);
     if choice = 1 then STT;
     if choice = 2 then TTS;
     if choice = 3 then settingen;
     readln;
end;
procedure start;
	 writeln('Tac Gia - Author: Ngoccoder.');
	 writeln('Vui long chon ngon ngu - Choose Language');
	 writeln('1. English.');
	 writeln('2. Tieng Viet');
	 write('Chon ngon ngu - Choose Language: ');
	 readln(chonngonngu);
	 if chonngonngu = 1 then menuen;
	 if chonngonngu = 2 then menuvn;
begin
     main;
     readln;
end.
