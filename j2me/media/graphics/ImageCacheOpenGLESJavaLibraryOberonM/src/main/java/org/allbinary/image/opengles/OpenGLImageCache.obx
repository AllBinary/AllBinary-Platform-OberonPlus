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
unit OpenGLImageCache;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, AllBinaryRendererBase3, BasicArrayList, ImageCache, PreResourceImageUtil, SynchObject;

type
  {AB:TYPES}
  // ImageCacheOpenGLESJavaLibrary
  TOpenGLImageCache = class(TImageCache)
  public
    imageCache: TImageCache;
    preResourceImageUtil: TPreResourceImageUtil;
    gl: IGL10;
    lock: TSynchObject;
    list: TBasicArrayList;
    renderer: TAllBinaryRendererBase3;
    procedure InitFields;
        constructor Create;
        procedure addListener(renderer: TObject); override;
        procedure update(gl: IGL10); virtual;
        function createImage(caller: string; width: Integer; height: Integer): TImage; override;
        function createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage; override;
        function getGlP: IGL10; virtual;
        procedure init(image_: TImage); override;
  end;

implementation
uses
  OpenGLESImage, NullImage, NullGL10, BasicArrayListD, ImageCacheFactory;


{AB:CODE}

procedure TOpenGLImageCache.InitFields;
begin
  Self.imageCache := TImageCacheFactory.getInstance();
  Self.preResourceImageUtil := TPreResourceImageUtil.getInstance();
  Self.gl := TNullGL10.NULL_GL10;
  Self.lock := TSynchObject.Create();
  Self.list := TBasicArrayListD.Create();
  Self.renderer := TAllBinaryRendererBase3.Create();
end;
    

constructor TOpenGLImageCache.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOpenGLImageCache.addListener(renderer: TObject);
begin
        Self.renderer := TAllBinaryRendererBase3(TJava.ToObject(renderer));
end;
    

// throws Exception
procedure TOpenGLImageCache.update(gl: IGL10);
var
  openGLESImage_: TOpenGLESImage;
  index: Integer;
begin
        Self.gl := gl;
        TJava.MonitorEnter(Self.lock);
        try
            for index := (Self.list.size()) - (1) downto 0 do begin
                openGLESImage_ := (TOpenGLESImage(TJava.ToObject(Self.list.objectArray[index])));
                if (openGLESImage_) <> (TOpenGLESImage.NULL_OPENGL_IMAGE) then begin
                    openGLESImage_.set_(gl);
                end;
            end;
        finally
            TJava.MonitorExit(Self.lock);
        end;
end;
    

// throws Exception
function TOpenGLImageCache.createImage(caller: string; width: Integer; height: Integer): TImage;
var
  textureSize: Integer;
  image2: TImage;
  image_: TImage;
begin
        textureSize := width;
        if (height) > (width) then begin
            textureSize := height;
        end;
        while (((textureSize) mod (4))) <> (0) do begin
            Inc(textureSize);
        end;
        width := textureSize;
        height := textureSize;
        image2 := Self.imageCache.get(caller, width, height);
        image_ := Self.preResourceImageUtil.encapsulate(image2);
        TJava.MonitorEnter(Self.lock);
        try
            if (image_) <> (TNullImage.NULL_IMAGE) then begin
                Self.list.add(TJava.Box(image_));
            end;
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Exit(image_);
end;
    

// throws Exception
function TOpenGLImageCache.createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage;
var
  cachedImage: TImage;
  image_: TImage;
begin
        cachedImage := Self.imageCache.getWithKey(TJava.Box(key));
        image_ := Self.preResourceImageUtil.encapsulate(cachedImage);
        TJava.MonitorEnter(Self.lock);
        try
            if (image_) <> (TNullImage.NULL_IMAGE) then begin
                Self.list.add(TJava.Box(image_));
            end;
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Exit(image_);
end;
    

function TOpenGLImageCache.getGlP: IGL10;
begin
        Exit(Self.gl);
end;
    

procedure TOpenGLImageCache.init(image_: TImage);
begin
        try
            TJava.MonitorEnter(Self.lock);
            try
                if Self.list.contains(TJava.Box(image_)) then begin
                    raise SysUtils.Exception.Create('');
                end;
                Self.list.add(TJava.Box(image_));
            finally
                TJava.MonitorExit(Self.lock);
            end;
            Self.renderer.add(image_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

