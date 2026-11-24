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
// package org.allbinary.collision
unit RectangleCollisionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, Rectangle;

type
  {AB:TYPES}
  TRectangleCollisionUtil = class(TObject)
  public
        constructor Create;
        class function isCollision(rectangle_: TRectangle; point: TGPoint): Boolean; overload; static;
        class function isCollision(rectangle1: TRectangle; rectangle2: TRectangle): Boolean; overload; static;
        class function isCollision(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; rect2X1: Integer; rect2Y1: Integer; rect2X2: Integer; rect2Y2: Integer): Boolean; overload; static;
  end;

implementation

{AB:CODE}
    

constructor TRectangleCollisionUtil.Create;
begin
    inherited Create;
end;
    

class function TRectangleCollisionUtil.isCollision(rectangle_: TRectangle; point: TGPoint): Boolean;
begin
        if ((((point.getX()) > (((Integer(Trunc(rectangle_.x))) + (rectangle_.getWidth())))) or ((point.getY()) > (((Integer(Trunc(rectangle_.y))) + (rectangle_.getHeight()))))) or ((point.getX()) < (rectangle_.x))) or ((point.getY()) < (rectangle_.y)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

class function TRectangleCollisionUtil.isCollision(rectangle1: TRectangle; rectangle2: TRectangle): Boolean;
begin
        Exit(TRectangleCollisionUtil.isCollision(rectangle1.x, rectangle1.y, (rectangle1.x) + (rectangle1.width), (rectangle1.y) + (rectangle1.height), rectangle2.x, rectangle2.y, (rectangle2.x) + (rectangle2.width), (rectangle2.y) + (rectangle2.height)));
end;
    

class function TRectangleCollisionUtil.isCollision(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; rect2X1: Integer; rect2Y1: Integer; rect2X2: Integer; rect2Y2: Integer): Boolean;
begin
        if ((((rect2X1) >= (rectX2)) or ((rect2Y1) >= (rectY2))) or ((rect2X2) <= (rectX1))) or ((rect2Y2) <= (rectY1)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

