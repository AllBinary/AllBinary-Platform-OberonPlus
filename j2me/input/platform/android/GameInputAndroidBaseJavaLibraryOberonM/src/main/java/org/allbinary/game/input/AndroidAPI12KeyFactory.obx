// Generated Code Do Not Modify
// package org.allbinary.game.input
unit AndroidAPI12KeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AndroidAPI9KeyFactory;

type
  {AB:TYPES}
  TAndroidAPI12KeyFactory = class(TAndroidAPI9KeyFactory)
  public
    class var instance12: TObject;
        class function getAPI12Instance: TAndroidAPI12KeyFactory; static;
        constructor Create;
  end;

implementation
uses
  AndroidGameKey, KeyEvent, NullUtil;


{AB:CODE}
    

class function TAndroidAPI12KeyFactory.getAPI12Instance: TAndroidAPI12KeyFactory;
begin
        if (TAndroidAPI12KeyFactory.instance12) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TAndroidAPI12KeyFactory.instance12 := TAndroidAPI12KeyFactory.Create();
        end;
        Exit(TAndroidAPI12KeyFactory(TJava.ToObject(TAndroidAPI12KeyFactory.instance12)));
end;
    

constructor TAndroidAPI12KeyFactory.Create;
begin
    inherited Create;
        Self.KEYCODE_BUTTON_1 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_1, 'BUTTON 1');
        Self.KEYCODE_BUTTON_10 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_10, 'BUTTON 10');
        Self.KEYCODE_BUTTON_11 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_11, 'BUTTON 11');
        Self.KEYCODE_BUTTON_12 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_12, 'BUTTON 12');
        Self.KEYCODE_BUTTON_13 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_13, 'BUTTON 13');
        Self.KEYCODE_BUTTON_14 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_14, 'BUTTON 14');
        Self.KEYCODE_BUTTON_15 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_15, 'BUTTON 15');
        Self.KEYCODE_BUTTON_16 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_16, 'BUTTON 16');
        Self.KEYCODE_BUTTON_2 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_2, 'BUTTON 2');
        Self.KEYCODE_BUTTON_3 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_3, 'BUTTON 3');
        Self.KEYCODE_BUTTON_4 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_4, 'BUTTON 4');
        Self.KEYCODE_BUTTON_5 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_5, 'BUTTON 5');
        Self.KEYCODE_BUTTON_6 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_6, 'BUTTON 6');
        Self.KEYCODE_BUTTON_7 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_7, 'BUTTON 7');
        Self.KEYCODE_BUTTON_8 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_8, 'BUTTON 8');
        Self.KEYCODE_BUTTON_9 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_9, 'BUTTON 9');
end;

initialization
  {AB:INITIALIZATION}
  TAndroidAPI12KeyFactory.instance12 := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

