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
unit LinePathRelativeAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, GPoint, ABLayer, LinePathAnimation;

type
  {AB:TYPES}
  TLinePathRelativeAnimation = class(TLinePathAnimation)
  public
    class var instanceC: TLinePathRelativeAnimation;
    constructor Create;
        class function getInstance: TLinePathAnimation; static;
        procedure paint(graphics_: TGraphics; point: TGPoint; nextPoint: TGPoint; tiledLayer: TABLayer); override;
  end;

implementation

{AB:CODE}

constructor TLinePathRelativeAnimation.Create;
begin
  inherited Create;
end;
    

class function TLinePathRelativeAnimation.getInstance: TLinePathAnimation;
begin
        Exit(TLinePathRelativeAnimation.instanceC);
end;
    

procedure TLinePathRelativeAnimation.paint(graphics_: TGraphics; point: TGPoint; nextPoint: TGPoint; tiledLayer: TABLayer);
begin
        graphics_.drawLine((nextPoint.getX()) - (tiledLayer.getXP()), (nextPoint.getY()) - (tiledLayer.getYP()), (point.getX()) - (tiledLayer.getXP()), (point.getY()) - (tiledLayer.getYP()));
end;

initialization
  {AB:INITIALIZATION}
  TLinePathRelativeAnimation.instanceC := TLinePathRelativeAnimation.Create();
  {AB:END}

end.

