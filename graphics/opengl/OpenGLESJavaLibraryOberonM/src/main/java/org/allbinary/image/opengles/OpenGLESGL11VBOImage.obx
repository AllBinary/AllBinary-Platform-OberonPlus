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
unit OpenGLESGL11VBOImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, GL10, Image, GLUtil, PlatformBitmapBaseFactory, PlatformTextureBaseFactory, OpenGLESImage;

type
  {AB:TYPES}
  // This is not actually VBO impl
  TOpenGLESGL11VBOImage = class(TOpenGLESImage)
  public
    glUtil: TGLUtil;
    textureVertexFloatBuffer: TFloatBuffer;
    regionRectangleFloatArray: TArray<Single>;
    regionRectangleVertexFloatBuffer: TFloatBuffer;
    regionTextureRectangleFloatArray: TArray<Single>;
    regionTextureVertexFloatBuffer: TFloatBuffer;
    procedure InitFields;
        constructor Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
        procedure initVertices; virtual;
        procedure set_(gl_: IGL); override;
        procedure drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer); override;
        procedure draw(gl_: IGL10; x: Integer; y: Integer; z: Integer); override;
  end;

implementation
uses
  OpenGLLogUtil, DisplayInfoSingleton;


{AB:CODE}

procedure TOpenGLESGL11VBOImage.InitFields;
begin
  Self.glUtil := TGLUtil.getInstance();
  Self.textureVertexFloatBuffer := TByteBuffer.allocateDirect(((4) * (4)) * (2)).order(TByteOrder.nativeOrder()).asFloatBuffer();
  Self.regionRectangleFloatArray := TArray<Single>.Create(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  Self.regionRectangleVertexFloatBuffer := TByteBuffer.allocateDirect(((4) * (4)) * (3)).order(TByteOrder.nativeOrder()).asFloatBuffer();
  Self.regionTextureRectangleFloatArray := TJava.NewArray<Single>(8);
  Self.regionTextureVertexFloatBuffer := TByteBuffer.allocateDirect(((4) * (4)) * (2)).order(TByteOrder.nativeOrder()).asFloatBuffer();
end;
    

constructor TOpenGLESGL11VBOImage.Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
begin
        inherited Create(image_, bitmapFactory, textureFactory);
        InitFields;
        Self.initVertices();
        Self.regionRectangleVertexFloatBuffer.put(TFloatBuffer.wrap(Self.regionRectangleFloatArray));
        Self.regionTextureVertexFloatBuffer.put(TFloatBuffer.wrap(Self.regionTextureRectangleFloatArray));
end;
    

procedure TOpenGLESGL11VBOImage.initVertices;
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
    

procedure TOpenGLESGL11VBOImage.set_(gl_: IGL);
var
  gl10_: IGL10;
begin
        gl10_ := (TJava.ToObject(gl_) as IGL10);
        if inherited initTexture(gl10_) then begin
            Self.textureFactory.load(gl10_, GL10.GL_TEXTURE_2D, 0, Self, 0, True);
            gl10_.glDisable(GL10.GL_TEXTURE_2D);
            TOpenGLLogUtil.getInstance().logError(gl10_, Self);
        end;
end;
    

procedure TOpenGLESGL11VBOImage.drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer);
begin
        Self.regionRectangleFloatArray[0] := x;
        Self.regionRectangleFloatArray[7] := (viewHeight) - (y);
        Self.regionRectangleFloatArray[1] := (Self.regionRectangleFloatArray[7]) - (height);
        Self.regionRectangleFloatArray[3] := (x) + (width);
        Self.regionRectangleFloatArray[4] := Self.regionRectangleFloatArray[1];
        Self.regionRectangleFloatArray[6] := x;
        Self.regionRectangleFloatArray[9] := Self.regionRectangleFloatArray[3];
        Self.regionRectangleFloatArray[10] := Self.regionRectangleFloatArray[7];
        Self.regionTextureRectangleFloatArray[0] := (x_src) / (Self.getWidth());
        Self.regionTextureRectangleFloatArray[1] := (((y_src) + (height))) / (Self.getHeight());
        Self.regionTextureRectangleFloatArray[2] := (((x_src) + (width))) / (Self.getWidth());
        Self.regionTextureRectangleFloatArray[3] := Self.regionTextureRectangleFloatArray[1];
        Self.regionTextureRectangleFloatArray[4] := Self.regionTextureRectangleFloatArray[0];
        Self.regionTextureRectangleFloatArray[5] := (y_src) / (Self.getHeight());
        Self.regionTextureRectangleFloatArray[6] := Self.regionTextureRectangleFloatArray[2];
        Self.regionTextureRectangleFloatArray[7] := Self.regionTextureRectangleFloatArray[5];
        Self.glUtil.position(Self.regionRectangleVertexFloatBuffer, 0);
        gl_.glVertexPointer(3, GL10.GL_FLOAT, 0, Self.regionRectangleVertexFloatBuffer);
        gl_.glEnableClientState(GL10.GL_VERTEX_ARRAY);
        gl_.glEnable(GL10.GL_TEXTURE_2D);
        gl_.glBindTexture(GL10.GL_TEXTURE_2D, Self.openGLESImageProperties.textureID);
        gl_.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
        Self.glUtil.position(Self.regionTextureVertexFloatBuffer, 0);
        gl_.glTexCoordPointer(2, GL10.GL_FLOAT, 0, Self.regionTextureVertexFloatBuffer);
        gl_.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
        gl_.glDisableClientState(GL10.GL_VERTEX_ARRAY);
        gl_.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
        gl_.glDisable(GL10.GL_TEXTURE_2D);
end;
    

procedure TOpenGLESGL11VBOImage.draw(gl_: IGL10; x: Integer; y: Integer; z: Integer);
begin
        Self.regionRectangleFloatArray[0] := x;
        Self.regionRectangleFloatArray[7] := (1.0 * (((TDisplayInfoSingleton.getInstance().getLastHeight()) - (y))));
        Self.regionRectangleFloatArray[1] := (Self.regionRectangleFloatArray[7]) - (Self.getHeight());
        Self.regionRectangleFloatArray[3] := (1.0 * (((x) + (Self.getWidth()))));
        Self.regionRectangleFloatArray[4] := Self.regionRectangleFloatArray[1];
        Self.regionRectangleFloatArray[6] := x;
        Self.regionRectangleFloatArray[9] := Self.regionRectangleFloatArray[3];
        Self.regionRectangleFloatArray[10] := Self.regionRectangleFloatArray[7];
        Self.glUtil.position(Self.regionRectangleVertexFloatBuffer, 0);
        gl_.glVertexPointer(3, GL10.GL_FLOAT, 0, Self.regionRectangleVertexFloatBuffer);
        gl_.glEnableClientState(GL10.GL_VERTEX_ARRAY);
        gl_.glEnable(GL10.GL_TEXTURE_2D);
        gl_.glBindTexture(GL10.GL_TEXTURE_2D, Self.openGLESImageProperties.textureID);
        gl_.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
        Self.glUtil.position(Self.textureVertexFloatBuffer, 0);
        gl_.glTexCoordPointer(2, GL10.GL_FLOAT, 0, Self.textureVertexFloatBuffer);
        gl_.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);
        gl_.glDisableClientState(GL10.GL_VERTEX_ARRAY);
        gl_.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
        gl_.glDisable(GL10.GL_TEXTURE_2D);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

