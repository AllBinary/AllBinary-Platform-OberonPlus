// Generated Code Do Not Modify
// package org.allbinary.game.input
unit AndroidAPI9KeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AndroidKeyFactory;

type
  {AB:TYPES}
  TAndroidAPI9KeyFactory = class(TAndroidKeyFactory)
  public
    class var instance: TObject;
        class function getInstance: TAndroidAPI9KeyFactory; static;
        constructor Create;
  end;

implementation
uses
  AndroidGameKey, KeyEvent, NullUtil;


{AB:CODE}
    

class function TAndroidAPI9KeyFactory.getInstance: TAndroidAPI9KeyFactory;
begin
        if (TAndroidAPI9KeyFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TAndroidAPI9KeyFactory.instance := TAndroidAPI9KeyFactory.Create();
        end;
        Exit(TAndroidAPI9KeyFactory(TJava.ToObject(TAndroidAPI9KeyFactory.instance)));
end;
    

constructor TAndroidAPI9KeyFactory.Create;
begin
    inherited Create;
        Self.KEYCODE_BUTTON_L1 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_L1, 'BUTTON L1');
        Self.KEYCODE_BUTTON_R1 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_R1, 'BUTTON R1');
        Self.KEYCODE_BUTTON_THUMBR := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_THUMBR, 'BUTTON THUMBR');
        Self.KEYCODE_BUTTON_THUMBL := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_THUMBL, 'BUTTON THUMBL');
        Self.KEYCODE_BUTTON_START := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_START, 'BUTTON START');
        Self.KEYCODE_BUTTON_MODE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_MODE, 'BUTTON MODE');
        Self.KEYCODE_BUTTON_B := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_B, 'BUTTON B');
        Self.KEYCODE_BUTTON_A := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_A, 'BUTTON A');
        Self.KEYCODE_BUTTON_X := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_X, 'BUTTON X');
        Self.KEYCODE_BUTTON_Y := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_Y, 'BUTTON Y');
        Self.KEYCODE_BUTTON_L2 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_L2, 'BUTTON L2');
        Self.KEYCODE_BUTTON_R2 := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_R2, 'BUTTON R2');
        Self.KEYCODE_BUTTON_SELECT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_SELECT, 'BUTTON SELECT');
        Self.KEYCODE_BUTTON_C := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_C, 'BUTTON C');
        Self.KEYCODE_BUTTON_Z := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BUTTON_Z, 'BUTTON Z');
end;

initialization
  {AB:INITIALIZATION}
  TAndroidAPI9KeyFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

