{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.media.image.comparison.color
unit ColorDelta;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface;

type
  {AB:TYPES}
  TColorDelta = class(TInterfacedObject, ICacheableInterface)
  public
    rgb1: Integer;
    rgb2: Integer;
    key: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(rgb1: Integer; rgb2: Integer);
        function getKey: TObject; overload; virtual;
        class function getKey(rgb1: Integer; rgb2: Integer): TObject; overload; static;
        function getRgb1: Integer; virtual;
        procedure setRgb1(rgb1: Integer); virtual;
        function getRgb2: Integer; virtual;
        procedure setRgb2(rgb2: Integer); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, StringUtil, CommonSeps;


{AB:CODE}

procedure TColorDelta.InitFields;
begin
  
  
  
end;

function TColorDelta.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TColorDelta.Create(rgb1: Integer; rgb2: Integer);
begin
    inherited Create;
    InitFields;
        Self.setRgb1(rgb1);
        Self.setRgb2(rgb2);
        Self.key := TJava.Box(TColorDelta.getKey(rgb1, rgb2));
end;
    

function TColorDelta.getKey: TObject;
begin
        Exit(TJava.Box(Self.key));
end;
    

class function TColorDelta.getKey(rgb1: Integer; rgb2: Integer): TObject;
begin
        Exit(TJava.Box(TStringMaker.Create().append(IntToStr(rgb1)).append(TCommonSeps.getInstance().UNDERSCORE).append(IntToStr(rgb2)).toString()));
end;
    

function TColorDelta.getRgb1: Integer;
begin
        Exit(Self.rgb1);
end;
    

procedure TColorDelta.setRgb1(rgb1: Integer);
begin
        Self.rgb1 := rgb1;
end;
    

function TColorDelta.getRgb2: Integer;
begin
        Exit(Self.rgb2);
end;
    

procedure TColorDelta.setRgb2(rgb2: Integer);
begin
        Self.rgb2 := rgb2;
end;
    

function TColorDelta.toString: string;
begin
        Exit(TStringMaker.Create().append('ColorDelta: ').append(TStringUtil.getInstance().toString(Self.getKey())).append(' RGB1: ').appendint(Self.getRgb1()).append(' RGB2: ').appendint(Self.getRgb2()).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

