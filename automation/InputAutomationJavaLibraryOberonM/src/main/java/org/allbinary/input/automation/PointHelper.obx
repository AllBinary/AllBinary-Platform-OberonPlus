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
// package org.allbinary.input.automation
unit PointHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Point, Rectangle;

type
  {AB:TYPES}
  TPointHelper = class(TObject)
  public
    class var two: Double;
        constructor Create;
        class function getCenterPoint(rectangle_: TRectangle): TPoint; static;
  end;

implementation
uses
  PointFactory;


{AB:CODE}
    

constructor TPointHelper.Create;
begin
    inherited Create;
end;
    

class function TPointHelper.getCenterPoint(rectangle_: TRectangle): TPoint;
var
  x: Double;
  y: Double;
begin
        x := (rectangle_.getX()) + ((rectangle_.getWidth()) / (TPointHelper.two));
        y := (rectangle_.getY()) + ((rectangle_.getHeight()) / (TPointHelper.two));
        Exit(TPointFactory.getInstance(Integer(Trunc(x)), Integer(Trunc(y))));
end;

initialization
  {AB:INITIALIZATION}
  TPointHelper.two := 2.0;
  {AB:END}

end.

