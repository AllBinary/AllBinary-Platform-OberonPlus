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
// package org.allbinary.media.graphics.geography.map
unit GeographicMapCellPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CellPosition, GPoint;

type
  {AB:TYPES}
  TGeographicMapCellPosition = class(TCellPosition)
  public
    point: TGPoint;
    midPoint: TGPoint;
    procedure InitFields;
        constructor Create(column: Integer; row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer);
        function getPoint: TGPoint; virtual;
        function getMidPoint: TGPoint; virtual;
        procedure setMidPoint(midPoint: TGPoint); virtual;
  end;

implementation
uses
  PointFactory;


{AB:CODE}

procedure TGeographicMapCellPosition.InitFields;
begin
  
  
end;
    

constructor TGeographicMapCellPosition.Create(column: Integer; row: Integer; columns: Integer; rows: Integer; width: Integer; height: Integer);
var
  x: Integer;
  y: Integer;
  pointFactory_: TPointFactory;
begin
        inherited Create(column, row, columns, rows);
        InitFields;
        x := (Self.getColumn()) * (width);
        y := (Self.getRow()) * (height);
        pointFactory_ := TPointFactory.getInstance();
        Self.point := pointFactory_.createXY(x, y);
        Self.midPoint := pointFactory_.createXY((x) + ((TJava.SignedRightShift(width, 1))), (y) + ((TJava.SignedRightShift(height, 1))));
end;
    

function TGeographicMapCellPosition.getPoint: TGPoint;
begin
        Exit(Self.point);
end;
    

function TGeographicMapCellPosition.getMidPoint: TGPoint;
begin
        Exit(Self.midPoint);
end;
    

procedure TGeographicMapCellPosition.setMidPoint(midPoint: TGPoint);
begin
        Self.midPoint := midPoint;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

