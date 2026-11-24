// Generated Code Do Not Modify
// package org.allbinary.game.input
unit PlatformKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AndroidKeyFactory, Input;

type
  {AB:TYPES}
  TPlatformKeyFactory = class(TObject)
  public
    androidKeyFactory: TAndroidKeyFactory;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPlatformKeyFactory; static;
        function getString(keyCode: Integer): string; virtual;
        function isSubmission(input_: TInput): Boolean; virtual;
        function isDelete(input_: TInput): Boolean; virtual;
        function isBackSpace(input_: TInput): Boolean; virtual;
        function isLeft(input_: TInput): Boolean; virtual;
        function isRight(input_: TInput): Boolean; virtual;
        function isUp(input_: TInput): Boolean; virtual;
        function isDown(input_: TInput): Boolean; virtual;
        function isEnter(input_: TInput): Boolean; virtual;
  end;

implementation
uses
  ActivityFractureControllerUtilFactory, AndroidGameKey, NullUtil;


{AB:CODE}

procedure TPlatformKeyFactory.InitFields;
begin
  Self.androidKeyFactory := TActivityFractureControllerUtilFactory.getInstance();
end;

constructor TPlatformKeyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPlatformKeyFactory.getInstance: TPlatformKeyFactory;
begin
        if (TPlatformKeyFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TPlatformKeyFactory.instance := TPlatformKeyFactory.Create();
        end;
        Exit(TPlatformKeyFactory(TJava.ToObject(TPlatformKeyFactory.instance)));
end;
    

function TPlatformKeyFactory.getString(keyCode: Integer): string;
begin
        Exit(TAndroidGameKey.getString(keyCode));
end;
    

function TPlatformKeyFactory.isSubmission(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isSubmission(input_));
end;
    

function TPlatformKeyFactory.isDelete(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isDelete(input_));
end;
    

function TPlatformKeyFactory.isBackSpace(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isBackSpace(input_));
end;
    

function TPlatformKeyFactory.isLeft(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isLeft(input_));
end;
    

function TPlatformKeyFactory.isRight(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isRight(input_));
end;
    

function TPlatformKeyFactory.isUp(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isUp(input_));
end;
    

function TPlatformKeyFactory.isDown(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isDown(input_));
end;
    

function TPlatformKeyFactory.isEnter(input_: TInput): Boolean;
begin
        Exit(Self.androidKeyFactory.isEnter(input_));
end;

initialization
  {AB:INITIALIZATION}
  TPlatformKeyFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

