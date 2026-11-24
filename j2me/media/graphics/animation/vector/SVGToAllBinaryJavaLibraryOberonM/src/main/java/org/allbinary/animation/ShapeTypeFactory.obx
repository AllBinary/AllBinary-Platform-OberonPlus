{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation
unit ShapeTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShapeType;

type
  {AB:TYPES}
  TShapeTypeFactory = class(TObject)
  public
    KEY_LINE: string;
    KEY_CIRCLE: string;
    KEY_RECTANGLE: string;
    KEY_RECT: string;
    LINE: TShapeType;
    CIRCLE: TShapeType;
    RECTANGLE: TShapeType;
    class var instance: TShapeTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TShapeTypeFactory; static;
  end;

implementation

{AB:CODE}

procedure TShapeTypeFactory.InitFields;
begin
  Self.KEY_LINE := 'line';
  Self.KEY_CIRCLE := 'circle';
  Self.KEY_RECTANGLE := 'rectangle';
  Self.KEY_RECT := 'rect';
  Self.LINE := TShapeType.Create(Self.KEY_LINE);
  Self.CIRCLE := TShapeType.Create(Self.KEY_CIRCLE);
  Self.RECTANGLE := TShapeType.Create(Self.KEY_RECTANGLE);
end;

constructor TShapeTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TShapeTypeFactory.getInstance: TShapeTypeFactory;
begin
        Exit(TShapeTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TShapeTypeFactory.instance := TShapeTypeFactory.Create();
  {AB:END}

end.

