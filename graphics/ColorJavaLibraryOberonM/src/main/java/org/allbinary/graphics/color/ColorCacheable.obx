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
// package org.allbinary.graphics.color
unit ColorCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface, Color;

type
  {AB:TYPES}
  TColorCacheable = class(TInterfacedObject, ICacheableInterface)
  public
    key: TObject;
    color: TColor;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(key: TObject);
        function getKey: TObject; virtual;
        function getColor: TColor; virtual;
        procedure setColor(color_: TColor); virtual;
  end;

implementation

{AB:CODE}

procedure TColorCacheable.InitFields;
begin
  
  
end;

function TColorCacheable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TColorCacheable.Create(key: TObject);
begin
    inherited Create;
    InitFields;
        Self.key := TJava.Box(key);
        Self.color := TColor.Create((Integer(key)).intValue());
end;
    

function TColorCacheable.getKey: TObject;
begin
        Exit(TJava.Box(Self.key));
end;
    

function TColorCacheable.getColor: TColor;
begin
        Exit(Self.color);
end;
    

procedure TColorCacheable.setColor(color_: TColor);
begin
        Self.color := color_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

