{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit LinePathAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, GPoint, ABLayer;

type
  {AB:TYPES}
  TLinePathAnimation = class(TObject)
  public
    class var instance: TLinePathAnimation;
    constructor Create;
        class function getInstance: TLinePathAnimation; static;
        procedure paint(graphics_: TGraphics; point: TGPoint; nextPoint: TGPoint; tiledLayer: TABLayer); virtual;
  end;

implementation

{AB:CODE}

constructor TLinePathAnimation.Create;
begin
  inherited Create;
end;
    

class function TLinePathAnimation.getInstance: TLinePathAnimation;
begin
        Exit(TLinePathAnimation.instance);
end;
    

procedure TLinePathAnimation.paint(graphics_: TGraphics; point: TGPoint; nextPoint: TGPoint; tiledLayer: TABLayer);
begin
        graphics_.drawLine(nextPoint.getX(), nextPoint.getY(), point.getX(), point.getY());
end;

initialization
  {AB:INITIALIZATION}
  TLinePathAnimation.instance := TLinePathAnimation.Create();
  {AB:END}

end.

