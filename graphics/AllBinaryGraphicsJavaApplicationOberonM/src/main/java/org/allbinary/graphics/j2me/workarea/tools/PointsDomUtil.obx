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
// package org.allbinary.graphics.j2me.workarea.tools
unit PointsDomUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, CanvasDom, BasicArrayList, Node;

type
  {AB:TYPES}
  TPointsDomUtil = class(TObject)
  public
    LINES: string;
    POINTONE: string;
    POINTTWO: string;
    ROTATEDPOINTONE: string;
    ROTATEDPOINTTWO: string;
    LINE: string;
    class var instance: TPointsDomUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPointsDomUtil; static;
        function toDom(canvasDom_: TCanvasDom; pointVector: TBasicArrayList): TNode; virtual;
        function getPointNode(point: TGPoint; pointName: string): TNode;
  end;

implementation
uses
  PointsUtil, Document, PointFactory, WorkAreaJPanel, PositionStrings;


{AB:CODE}

procedure TPointsDomUtil.InitFields;
begin
  Self.LINES := 'lines';
  Self.POINTONE := 'pointOne';
  Self.POINTTWO := 'pointTwo';
  Self.ROTATEDPOINTONE := 'rotatedPointOne';
  Self.ROTATEDPOINTTWO := 'rotatedPointTwo';
  Self.LINE := 'line';
end;

constructor TPointsDomUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPointsDomUtil.getInstance: TPointsDomUtil;
begin
        Exit(TPointsDomUtil.instance);
end;
    

// throws Exception
function TPointsDomUtil.toDom(canvasDom_: TCanvasDom; pointVector: TBasicArrayList): TNode;
var
  tempPointVector: TBasicArrayList;
  document_: TDocument;
  linesNode: TNode;
  size2: Integer;
  size: Integer;
  firstPoint: TGPoint;
  rotatedFirstPoint: TGPoint;
  index: Integer;
  lineNode: TNode;
  rotatedSecondPoint: TGPoint;
  secondPoint: TGPoint;
  pointOneNode: TNode;
  pointTwoNode: TNode;
  rotatedPointOneNode: TNode;
  rotatedPointTwoNode: TNode;
begin
        tempPointVector := TPointsUtil.getInstance().doTransforms(pointVector, canvasDom_.getAngle(), TPointFactory.getInstance().createXY(canvasDom_.getDimension().getWidth(), canvasDom_.getDimension().getHeight()));
        document_ := TWorkAreaJPanel.getDocument();
        linesNode := TNode(TJava.ToObject(document_.createElement(Self.LINES)));
        size2 := tempPointVector.size();
        size := pointVector.size();
        firstPoint := nil;
        rotatedFirstPoint := nil;
        index := 0;
        if ((index) < (size)) and ((index) < (size2)) then begin
            rotatedFirstPoint := TGPoint(TJava.ToObject(tempPointVector.get(index)));
            firstPoint := TGPoint(TJava.ToObject(pointVector.get(index)));
            Inc(index);
        end;
        while ((index) < (size)) and ((index) < (size2)) do begin
            lineNode := TNode(TJava.ToObject(document_.createElement(Self.LINE)));
            rotatedSecondPoint := TGPoint(TJava.ToObject(tempPointVector.get(index)));
            secondPoint := TGPoint(TJava.ToObject(pointVector.get(index)));
            pointOneNode := Self.getPointNode(firstPoint, Self.POINTONE);
            pointTwoNode := Self.getPointNode(secondPoint, Self.POINTTWO);
            rotatedPointOneNode := Self.getPointNode(rotatedFirstPoint, Self.ROTATEDPOINTONE);
            rotatedPointTwoNode := Self.getPointNode(rotatedSecondPoint, Self.ROTATEDPOINTTWO);
            lineNode.appendChild(pointOneNode);
            lineNode.appendChild(pointTwoNode);
            lineNode.appendChild(rotatedPointOneNode);
            lineNode.appendChild(rotatedPointTwoNode);
            firstPoint := secondPoint;
            rotatedFirstPoint := rotatedSecondPoint;
            linesNode.appendChild(lineNode);
            Inc(index);
        end;
        Exit(linesNode);
end;
    

function TPointsDomUtil.getPointNode(point: TGPoint; pointName: string): TNode;
var
  document_: TDocument;
  pointNode: TNode;
  xNode: TNode;
  xTextNode: TNode;
  yNode: TNode;
  yTextNode: TNode;
begin
        document_ := TWorkAreaJPanel.getDocument();
        pointNode := TNode(TJava.ToObject(document_.createElement(pointName)));
        xNode := TNode(TJava.ToObject(document_.createElement(TPositionStrings.getInstance().X)));
        xTextNode := TNode(TJava.ToObject(document_.createTextNode(IntToStr(point.getX()))));
        xNode.appendChild(xTextNode);
        yNode := TNode(TJava.ToObject(document_.createElement(TPositionStrings.getInstance().Y)));
        yTextNode := TNode(TJava.ToObject(document_.createTextNode(IntToStr(point.getY()))));
        yNode.appendChild(yTextNode);
        pointNode.appendChild(xNode);
        pointNode.appendChild(yNode);
        Exit(pointNode);
end;

initialization
  {AB:INITIALIZATION}
  TPointsDomUtil.instance := TPointsDomUtil.Create();
  {AB:END}

end.

