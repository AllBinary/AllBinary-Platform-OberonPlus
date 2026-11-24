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
unit GraphicItemInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, CanvasDom, IntegerDimension, Node, Color, Points, Graphics, MouseEvent, KeyEvent;

type
  {AB:TYPES}
  IGraphicItemInterface = interface(IJavaObject) ['IGraphicItemInterface']
        function getName: string;
        procedure setColor(color_: TColor);
        function getTreeNode: TMutableTreeNode;
        function getPointsInterface: TPoints;
        procedure setPointsInterface(points_: TPoints);
        function isValid: Boolean;
        function isActive: Boolean;
        procedure deactivate;
        procedure activate;
        procedure setFulcrumPoint(point: TGPoint);
        procedure translate(x: Integer; y: Integer);
        procedure setRotate(theta: Double);
        procedure addRotate(theta: Double);
        procedure setAngle(angle: Double);
        procedure addAngle(angle: Double);
        function getAngle: Double;
        procedure paint(g: TGraphics; canvasAngle: Double; dimension: TIntegerDimension; x: Integer; y: Integer);
        function toDom(canvasDom_: TCanvasDom): TNode;
        function removePoint: TGPoint;
        procedure addPoint(point: TGPoint);
        procedure mouseClicked(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
        procedure mouseEntered(mouseEvent_: TMouseEvent);
        procedure mouseExited(mouseEvent_: TMouseEvent);
        procedure mousePressed(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
        procedure mouseReleased(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
        procedure mouseDragged(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
        procedure mouseMoved(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
        procedure keyPressed(keyEvent_: TKeyEvent);
        procedure keyReleased(keyEvent_: TKeyEvent);
        procedure keyTyped(keyEvent_: TKeyEvent);
        function duplicate: IGraphicItemInterface;
  end;
  TGraphicItemInterface = IGraphicItemInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

