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
unit OpenGLESImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, GL10, Image, LogUtil, PlatformBitmapBase, PlatformBitmapBaseFactory, PlatformTextureBaseFactory, CommonStrings, BasicArrayList, OpenGLESImageProcessor, OpenGLESImageTranslate, OpenGLESImageProperties, OpenGLSurfaceChangedInterface;

type
  {AB:TYPES}
  // OpenGLESSWTJOGLImageJavaLibrary
  TOpenGLESImage = class(TImage, IOpenGLSurfaceChangedInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    textureFactory: TPlatformTextureBaseFactory;
    openGLBitmap: TPlatformBitmapBase;
    imageProcessor: TOpenGLESImageProcessor;
    openGLESImageTranslate: TOpenGLESImageTranslate;
    openGLESImageProperties: TOpenGLESImageProperties;
    class var NULL_OPENGL_IMAGE: TOpenGLESImage;
    class var texture2dList: TBasicArrayList;
    class var TYPE_: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
        function getHeight: Integer; virtual;
        function getWidth: Integer; virtual;
        procedure set_(gl_: IGL); virtual;
        function initTexture(gl_: IGL10): Boolean; virtual;
        procedure drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer); virtual;
        procedure draw(gl_: IGL10; x: Integer; y: Integer; z: Integer); virtual;
        function getType: Integer; virtual;
        function toString: string; override;
  end;

implementation
uses
  OpenGLImageCacheFactory, NullImage, OpenGLESPostLoadPlatformImage, PostLoadImageProcessor, GraphicsStrings, StringMaker, BasicArrayListD;


{AB:CODE}

procedure TOpenGLESImage.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.imageProcessor := TOpenGLESImageProcessor.getInstance();
  Self.openGLESImageTranslate := TOpenGLESImageTranslate.getInstance();
  Self.openGLESImageProperties := TOpenGLESImageProperties.Create();
end;

function TOpenGLESImage.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOpenGLESImage.Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
begin
        inherited Create(image_.getName(), TPostLoadImageProcessor.NULL_POST_LOAD_IMAGE_PROCESSOR);
        InitFields;
        Self.openGLBitmap := bitmapFactory.createBitmap(image_);
        Self.textureFactory := textureFactory;
        TOpenGLImageCacheFactory.getInstance().init(Self);
        Self.platformImage := TOpenGLESPostLoadPlatformImage.getInstance();
end;
    

function TOpenGLESImage.getHeight: Integer;
begin
        Exit(Integer(Trunc(((Self.openGLBitmap.getHeight()) * (Self.openGLESImageProperties.scaleY2)))));
end;
    

function TOpenGLESImage.getWidth: Integer;
begin
        Exit(Integer(Trunc(((Self.openGLBitmap.getWidth()) * (Self.openGLESImageProperties.scaleX2)))));
end;
    

// throws Exception
procedure TOpenGLESImage.set_(gl_: IGL);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TOpenGLESImage.initTexture(gl_: IGL10): Boolean;
var
  textures: TArray<Integer>;
begin
        if not (TOpenGLESImage.texture2dList.contains(TJava.Box(Self))) then begin
            TOpenGLESImage.texture2dList.add(TJava.Box(Self));
            textures := TJava.NewArray<Integer>(1);
            gl_.glEnable(GL10.GL_TEXTURE_2D);
            if (Self.openGLESImageProperties.textureID) <> (-1) then begin
                textures[0] := Self.openGLESImageProperties.textureID;
                gl_.glDeleteTextures(1, textures, 0);
            end;
            gl_.glGenTextures(1, textures, 0);
            Self.openGLESImageProperties.textureID := textures[0];
            gl_.glBindTexture(GL10.GL_TEXTURE_2D, Self.openGLESImageProperties.textureID);
            gl_.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST);
            gl_.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE);
            gl_.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE);
            Exit(True);
        end;
        Exit(False);
end;
    

procedure TOpenGLESImage.drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer);
begin
end;
    

procedure TOpenGLESImage.draw(gl_: IGL10; x: Integer; y: Integer; z: Integer);
begin
end;
    

function TOpenGLESImage.getType: Integer;
begin
        Exit(TOpenGLESImage.TYPE_);
end;
    

function TOpenGLESImage.toString: string;
var
  graphicsStrings_: TGraphicsStrings;
begin
        graphicsStrings_ := TGraphicsStrings.getInstance();
        Exit(TStringMaker.Create().append(Self.getName()).append(inherited toString()).append(graphicsStrings_.OPACITY).appendfloat((1.0 * (Self.openGLESImageProperties.alphaf))).toString());
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESImage.NULL_OPENGL_IMAGE := TOpenGLESImage.Create(TNullImage.NULL_IMAGE, TPlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, TPlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
  TOpenGLESImage.texture2dList := TBasicArrayListD.Create();
  TOpenGLESImage.TYPE_ := 4;
  {AB:END}

end.

