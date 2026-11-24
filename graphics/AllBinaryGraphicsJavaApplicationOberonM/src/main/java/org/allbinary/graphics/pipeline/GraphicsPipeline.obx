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
// package org.allbinary.graphics.pipeline
unit GraphicsPipeline;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicGraphicsPipeline;

type
  {AB:TYPES}
  TGraphicsPipeline = class(TBasicGraphicsPipeline)
  public
        constructor Create(points: TBasicArrayList);
        procedure rotateTheta(aTheta: Double); virtual;
  end;

implementation
uses
  GPoint, PointFactory, BasicArrayListD;


{AB:CODE}
    

constructor TGraphicsPipeline.Create(points: TBasicArrayList);
begin
        inherited Create(points);
end;
    

// throws Exception
procedure TGraphicsPipeline.rotateTheta(aTheta: Double);
var
  newVector: TBasicArrayList;
  size: Integer;
  secondPoint: TGPoint;
  secondX: Double;
  secondY: Double;
  point: TGPoint;
  index: Integer;
begin
        newVector := TBasicArrayListD.Create();
        size := Self.pointBasicArrayList.size();
        for index := 0 to size - 1 do begin
            secondPoint := TGPoint(TJava.ToObject(Self.pointBasicArrayList.get(index)));
            secondX := (((secondPoint.getX()) * (Cos(aTheta)))) - (((secondPoint.getY()) * (Sin(aTheta))));
            secondY := (((secondPoint.getX()) * (Sin(aTheta)))) + (((secondPoint.getY()) * (Cos(aTheta))));
            point := TPointFactory.getInstance().createXY((Integer(Trunc(secondX))), (Integer(Trunc(secondY))));
            newVector.add(TJava.Box(point));
        end;
        Self.pointBasicArrayList := newVector;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

