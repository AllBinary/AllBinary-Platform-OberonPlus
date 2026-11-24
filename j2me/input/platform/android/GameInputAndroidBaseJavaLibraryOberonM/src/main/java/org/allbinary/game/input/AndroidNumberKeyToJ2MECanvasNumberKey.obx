// Generated Code Do Not Modify
// package org.allbinary.game.input
unit AndroidNumberKeyToJ2MECanvasNumberKey;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAndroidNumberKeyToJ2MECanvasNumberKey = class(TObject)
  public
    class var androidtoJavaMicroEditionKeyMap: TArray<Integer>;
        class procedure init; static;
        constructor Create;
        class function getKey(key: Integer): Integer; static;
  end;

implementation
uses
  Canvas, KeyEvent;


{AB:CODE}
    

class procedure TAndroidNumberKeyToJ2MECanvasNumberKey.init;
begin
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_0] := TCanvas.KEY_NUM0;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_1] := TCanvas.KEY_NUM1;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_2] := TCanvas.KEY_NUM2;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_3] := TCanvas.KEY_NUM3;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_4] := TCanvas.KEY_NUM4;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_5] := TCanvas.KEY_NUM5;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_6] := TCanvas.KEY_NUM6;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_7] := TCanvas.KEY_NUM7;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_8] := TCanvas.KEY_NUM8;
        TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[TKeyEvent.KEYCODE_9] := TCanvas.KEY_NUM9;
end;
    

constructor TAndroidNumberKeyToJ2MECanvasNumberKey.Create;
begin
    inherited Create;
end;
    

class function TAndroidNumberKeyToJ2MECanvasNumberKey.getKey(key: Integer): Integer;
var
  value: Integer;
begin
        if (key) < (System.Length(TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap)) then begin
            value := TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap[key];
            if (value) <> (0) then begin
                Exit(value);
            end;
        end;
        Exit(key);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidNumberKeyToJ2MECanvasNumberKey.androidtoJavaMicroEditionKeyMap := TJava.NewArray<Integer>(17);
  {AB:END}

end.

