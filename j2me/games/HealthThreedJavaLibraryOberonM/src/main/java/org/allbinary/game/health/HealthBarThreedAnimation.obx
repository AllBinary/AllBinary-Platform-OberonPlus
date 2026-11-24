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
// package org.allbinary.game.health
unit HealthBarThreedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Rectangle, Object3dProcessor, BasicColorFactory, AllBinaryLayer, HealthBarAnimation;

type
  {AB:TYPES}
  THealthBarThreedAnimation = class(THealthBarAnimation)
  public
    rectangle: TRectangle;
    basicColorFactory: TBasicColorFactory;
    object3dProcessor: TObject3dProcessor;
    procedure InitFields;
        constructor Create(layerInterface: TAllBinaryLayer; location: Integer);
        procedure updateColor;
        procedure updateSize;
        procedure onHealthChange(newX2: Integer); virtual;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); virtual;
  end;

implementation
uses
  GL10, ColorBufferList, Number3dBufferList, Number3d, OpenGLESGraphics, Object3dProcessorUtil, ViewPositionBase;


{AB:CODE}

procedure THealthBarThreedAnimation.InitFields;
begin
  
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.object3dProcessor := TObject3dProcessorUtil.getInstance().getInstanceObject3dProcessor();
end;
    

constructor THealthBarThreedAnimation.Create(layerInterface: TAllBinaryLayer; location: Integer);
begin
        inherited Create(layerInterface, location);
        InitFields;
        Self.basicColor := Self.basicColorFactory.GREEN;
        Self.colorP := Self.basicColor.intValue();
        Self.rectangle := TRectangle.Create(0, 0, 1, 1, Self.basicColor);
        Self.rectangle.setDoubleSidedEnabled(True);
        Self.rectangle.setNormalsEnabled(False);
        Self.rectangle.setTexturesEnabled(False);
end;
    

procedure THealthBarThreedAnimation.updateColor;
var
  colorBufferList_: TColorBufferList;
  size: Integer;
  index: Integer;
begin
        colorBufferList_ := Self.rectangle.getVertices().getColor4BufferList();
        size := colorBufferList_.size();
        index := size;
        while (TJava.PreDec(index)) >= (0) do begin
            colorBufferList_.set_(index, Self.basicColor);
        end;
end;
    

procedure THealthBarThreedAnimation.updateSize;
var
  number3dBufferList_: TNumber3dBufferList;
  width: Integer;
  height: Integer;
  segsH: Integer;
  segsW: Integer;
  row: Integer;
  col: Integer;
  w: Single;
  h: Single;
  width5: Single;
  height5: Single;
  index: Integer;
begin
        number3dBufferList_ := Self.rectangle.getVertices().getPointsOnFacesNumber3dBufferList();
        width := Self.x2;
        height := (Self.thickness) * (2);
        segsH := 1;
        segsW := 1;
        
        
        w := (width) div (segsW);
        h := (height) div (segsH);
        width5 := (width) / (2.0);
        height5 := (height) / (2.0);
        index := 0;
        for row := 0 to segsH do begin
            for col := 0 to segsW do begin
                number3dBufferList_.set_(TJava.PostInc(index), ((col) * (w)) - (width5), ((row) * (h)) - (height5), 0.0);
            end;
        end;
end;
    

procedure THealthBarThreedAnimation.onHealthChange(newX2: Integer);
begin
        inherited onHealthChange(newX2);
        Self.updateColor();
        Self.updateSize();
end;
    

procedure THealthBarThreedAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
var
  openGLESGraphics_: TOpenGLESGraphics;
  gl: IGL10;
  viewPosition: TViewPositionBase;
  positionNumber3d: TNumber3d;
begin
        openGLESGraphics_ := TOpenGLESGraphics(TJava.ToObject(graphics_));
        gl := openGLESGraphics_.getGl10();
        viewPosition := Self.allbinaryLayer.getViewPosition();
        positionNumber3d := Self.rectangle.getPosition();
        positionNumber3d.x := -((1.0 * (viewPosition.getX())));
        positionNumber3d.z := -((1.0 * (viewPosition.getY())));
        positionNumber3d.y := (viewPosition.getZ()) + (Self.allbinaryLayer.getHeight());
        Self.object3dProcessor.drawObject(gl, Self.rectangle);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

