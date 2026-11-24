// Generated Code Do Not Modify
// package org.allbinary.graphics
unit OpenGLBitmap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, PlatformBitmapBase;

type
  {AB:TYPES}
  TOpenGLBitmap = class(TPlatformBitmapBase)
  public
    image: TImage;
    procedure InitFields;
        constructor Create(bitmap: TObject);
        function getImage: TImage; virtual;
        function getDepth: Integer; virtual;
        procedure getPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure setPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        function getWidth: Integer; override;
        function getHeight: Integer; override;
        procedure recycle; virtual;
  end;

implementation
uses
  DisposalUtil, SwtImmutableImage, SwtMutableImage;


{AB:CODE}

procedure TOpenGLBitmap.InitFields;
begin
  
end;
    

constructor TOpenGLBitmap.Create(bitmap: TObject);
begin
    inherited Create;
    InitFields;
        Self.image := TImage(TJava.ToObject(bitmap));
end;
    

function TOpenGLBitmap.getImage: TImage;
begin
        Exit(Self.image);
end;
    

function TOpenGLBitmap.getDepth: Integer;
var
  immutableImage: TSwtImmutableImage;
  mutableImage: TSwtMutableImage;
begin
        if Self.image.isMutable() then begin
            mutableImage := TSwtMutableImage(TJava.ToObject(Self.image));
            Exit(mutableImage.getDepth());
        end else begin
            immutableImage := TSwtImmutableImage(TJava.ToObject(Self.image));
            Exit(immutableImage.getDepth());
        end;
end;
    

procedure TOpenGLBitmap.getPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
var
  immutableImage: TSwtImmutableImage;
  mutableImage: TSwtMutableImage;
begin
        if Self.image.isMutable() then begin
            mutableImage := TSwtMutableImage(TJava.ToObject(Self.image));
            mutableImage.getRGB(pixels, offset, stride, x, y, width, height);
        end else begin
            immutableImage := TSwtImmutableImage(TJava.ToObject(Self.image));
            immutableImage.getRGB(pixels, offset, stride, x, y, width, height);
        end;
end;
    

procedure TOpenGLBitmap.setPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Self.image.setRGB2(pixels, offset, height, x, y, width, height);
end;
    

function TOpenGLBitmap.getWidth: Integer;
begin
        Exit(Self.image.getWidth());
end;
    

function TOpenGLBitmap.getHeight: Integer;
begin
        Exit(Self.image.getHeight());
end;
    

procedure TOpenGLBitmap.recycle;
begin
        TDisposalUtil.getInstance().disposeImage(Self.image);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

