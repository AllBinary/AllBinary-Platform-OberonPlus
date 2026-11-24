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
// package org.allbinary.image.opengles
unit OpenGLESGL10Image;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, GL10, Image, PlatformBitmapBaseFactory, PlatformTextureBaseFactory, OpenGLESImageDraw, OpenGLESImage;

type
  {AB:TYPES}
  TOpenGLESGL10Image = class(TOpenGLESImage)
  public
    textureVertexFloatBuffer: TFloatBuffer;
    realOpenGLESImageDraw: TOpenGLESImageDraw;
    openGLESImageDraw: TOpenGLESImageDraw;
    procedure InitFields;
        constructor Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
        procedure initVertices; virtual;
        procedure set_(gl_: IGL); override;
        procedure drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer); override;
        procedure draw(gl_: IGL10; x: Integer; y: Integer; z: Integer); override;
  end;

implementation
uses
  OpenGLESImageProperties, OpenGLESImageProcessor, DisplayInfoSingleton, OpenGLLogUtil, GLUtil;


{AB:CODE}

procedure TOpenGLESGL10Image.InitFields;
begin
  Self.textureVertexFloatBuffer := TByteBuffer.allocateDirect(((4) * (4)) * (2)).order(TByteOrder.nativeOrder()).asFloatBuffer();
  Self.realOpenGLESImageDraw := TOpenGLESImageDraw.Create() (* Java anonymous class body: implement it as a named class
        Self.glUtil := TGLUtil.getInstance();
        Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
        Self.textureVertexFloatBuffer := Self.textureVertexFloatBuffer;
        Self.regionTextureRectangleFloatArray := TJava.NewArray<Single>(8);
        Self.regionTextureVertexFloatBuffer := TByteBuffer.allocateDirect(((4) * (4)) * (2)).order(TByteOrder.nativeOrder()).asFloatBuffer();
        Self.regionRectangleFloatArray := TArray<Single>.Create(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
        Self.regionRectangleVertexFloatBuffer := TByteBuffer.allocateDirect(((4) * (4)) * (3)).order(TByteOrder.nativeOrder()).asFloatBuffer();
        Self.openGLESImageProperties := Self.openGLESImageProperties;
        

    procedure T.drawRegion(gl: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer);
var
  imageWidth: Integer;
  imageHeight: Integer;
  u_center: Single;
  v_center: Single;
  imageProcessor: TOpenGLESImageProcessor;
begin
            imageWidth := Self.getWidth();
            imageHeight := Self.getHeight();
            Self.regionRectangleFloatArray[7] := (1.0 * (viewHeight));
            Self.regionRectangleFloatArray[1] := (Self.regionRectangleFloatArray[7]) - (height);
            Self.regionRectangleFloatArray[3] := width;
            Self.regionRectangleFloatArray[4] := Self.regionRectangleFloatArray[1];
            Self.regionRectangleFloatArray[9] := Self.regionRectangleFloatArray[3];
            Self.regionRectangleFloatArray[10] := Self.regionRectangleFloatArray[7];
            Self.regionTextureRectangleFloatArray[0] := TJava.Divide(x_src, imageWidth);
            Self.regionTextureRectangleFloatArray[1] := TJava.Divide(((y_src) + (height)), imageHeight);
            Self.regionTextureRectangleFloatArray[2] := TJava.Divide(((x_src) + (width)), imageWidth);
            Self.regionTextureRectangleFloatArray[3] := Self.regionTextureRectangleFloatArray[1];
            Self.regionTextureRectangleFloatArray[4] := Self.regionTextureRectangleFloatArray[0];
            Self.regionTextureRectangleFloatArray[5] := TJava.Divide(y_src, imageHeight);
            Self.regionTextureRectangleFloatArray[6] := Self.regionTextureRectangleFloatArray[2];
            Self.regionTextureRectangleFloatArray[7] := Self.regionTextureRectangleFloatArray[5];
            u_center := (((Self.regionTextureRectangleFloatArray[0]) + (Self.regionTextureRectangleFloatArray[2]))) / (2.0);
            v_center := (((Self.regionTextureRectangleFloatArray[5]) + (Self.regionTextureRectangleFloatArray[1]))) / (2.0);
            Self.glUtil.rotateUVs(Self.regionTextureRectangleFloatArray, (1.0 * (-Self.openGLESImageProperties.angle)), u_center, v_center);
            gl.glPushMatrix();
            imageProcessor := Self.imageProcessor;
            Self.openGLESImageTranslate.translate(gl, Self, (1.0 * (x)), (1.0 * (-y)));
            imageProcessor.scale(gl, Self.openGLESImageProperties.scaleX, Self.openGLESImageProperties.scaleY);
            imageProcessor.colorMask(gl, Self.openGLESImageProperties.redf, Self.openGLESImageProperties.greenf, Self.openGLESImageProperties.bluef, Self.openGLESImageProperties.alphaf);
            Self.openGLESImageTranslate.translate2(gl, Self);
            Self.regionRectangleVertexFloatBuffer.put(Self.regionRectangleFloatArray);
            Self.glUtil.position(Self.regionRectangleVertexFloatBuffer, 0);
            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, Self.regionRectangleVertexFloatBuffer);
            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
            gl.glEnable(GL10.GL_TEXTURE_2D);
            gl.glBindTexture(GL10.GL_TEXTURE_2D, Self.openGLESImageProperties.textureID);
            gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
            Self.regionTextureVertexFloatBuffer.put(Self.regionTextureRectangleFloatArray);
            Self.glUtil.position(Self.regionTextureVertexFloatBuffer, 0);
            gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, Self.regionTextureVertexFloatBuffer);
            gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY);
            gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
            gl.glDisable(GL10.GL_TEXTURE_2D);
            gl.glPopMatrix();
end;
        

    procedure T.draw(gl: IGL10; x: Integer; y: Integer; z: Integer);
var
  width: Integer;
  height: Integer;
  imageProcessor: TOpenGLESImageProcessor;
begin
            width := Self.getWidth();
            height := Self.getHeight();
            Self.regionRectangleFloatArray[7] := (1.0 * (Self.displayInfoSingleton.getLastHeight()));
            Self.regionRectangleFloatArray[1] := (Self.regionRectangleFloatArray[7]) - (height);
            Self.regionRectangleFloatArray[3] := width;
            Self.regionRectangleFloatArray[4] := Self.regionRectangleFloatArray[1];
            Self.regionRectangleFloatArray[9] := Self.regionRectangleFloatArray[3];
            Self.regionRectangleFloatArray[10] := Self.regionRectangleFloatArray[7];
            Self.regionTextureRectangleFloatArray[0] := 0.0;
            Self.regionTextureRectangleFloatArray[1] := 1.0;
            Self.regionTextureRectangleFloatArray[2] := 1.0;
            Self.regionTextureRectangleFloatArray[3] := 1.0;
            Self.regionTextureRectangleFloatArray[4] := 0.0;
            Self.regionTextureRectangleFloatArray[5] := 0.0;
            Self.regionTextureRectangleFloatArray[6] := 1.0;
            Self.regionTextureRectangleFloatArray[7] := 0.0;
            gl.glPushMatrix();
            Self.openGLESImageTranslate.translate(gl, Self, (1.0 * (x)), (1.0 * (-y)));
            imageProcessor := Self.imageProcessor;
            imageProcessor.scale(gl, Self.openGLESImageProperties.scaleX, Self.openGLESImageProperties.scaleY);
            imageProcessor.colorMask(gl, Self.openGLESImageProperties.redf, Self.openGLESImageProperties.greenf, Self.openGLESImageProperties.bluef, Self.openGLESImageProperties.alphaf);
            Self.openGLESImageTranslate.translate2(gl, Self);
            Self.regionRectangleVertexFloatBuffer.put(Self.regionRectangleFloatArray);
            Self.glUtil.position(Self.regionRectangleVertexFloatBuffer, 0);
            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, Self.regionRectangleVertexFloatBuffer);
            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
            gl.glEnable(GL10.GL_TEXTURE_2D);
            gl.glBindTexture(GL10.GL_TEXTURE_2D, Self.openGLESImageProperties.textureID);
            gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
            Self.glUtil.rotateUVs(Self.regionTextureRectangleFloatArray, (1.0 * (-Self.openGLESImageProperties.angle)), 0.5, 0.5);
            Self.glUtil.position(Self.textureVertexFloatBuffer, 0);
            Self.textureVertexFloatBuffer.put(Self.regionTextureRectangleFloatArray);
            Self.glUtil.position(Self.textureVertexFloatBuffer, 0);
            gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, Self.textureVertexFloatBuffer);
            gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY);
            gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
            gl.glDisable(GL10.GL_TEXTURE_2D);
            gl.glPopMatrix();
end;
*);
  Self.openGLESImageDraw := TOpenGLESImageDraw.getInstance();
end;
    

constructor TOpenGLESGL10Image.Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
begin
        inherited Create(image_, bitmapFactory, textureFactory);
        InitFields;
        Self.initVertices();
end;
    

procedure TOpenGLESGL10Image.initVertices;
begin
        Self.textureVertexFloatBuffer.put(0.0);
        Self.textureVertexFloatBuffer.put(1.0);
        Self.textureVertexFloatBuffer.put(1.0);
        Self.textureVertexFloatBuffer.put(1.0);
        Self.textureVertexFloatBuffer.put(0.0);
        Self.textureVertexFloatBuffer.put(0.0);
        Self.textureVertexFloatBuffer.put(1.0);
        Self.textureVertexFloatBuffer.put(0.0);
        Self.textureVertexFloatBuffer.rewind();
end;
    

procedure TOpenGLESGL10Image.set_(gl_: IGL);
var
  gl10_: IGL10;
begin
        gl10_ := (TJava.ToObject(gl_) as IGL10);
        if inherited initTexture(gl10_) then begin
            Self.textureFactory.load(gl10_, GL10.GL_TEXTURE_2D, 0, Self, 0, True);
            gl10_.glDisable(GL10.GL_TEXTURE_2D);
            Self.openGLESImageDraw := Self.realOpenGLESImageDraw;
            TOpenGLLogUtil.getInstance().logError(gl10_, Self);
        end;
end;
    

procedure TOpenGLESGL10Image.drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer);
begin
        Self.openGLESImageDraw.drawRegion(gl_, viewHeight, x_src, y_src, width, height, x, y, z);
end;
    

procedure TOpenGLESGL10Image.draw(gl_: IGL10; x: Integer; y: Integer; z: Integer);
begin
        Self.openGLESImageDraw.draw(gl_, x, y, z);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

