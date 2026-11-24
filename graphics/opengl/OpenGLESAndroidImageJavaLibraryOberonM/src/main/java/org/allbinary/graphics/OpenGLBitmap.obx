// Generated Code Do Not Modify
// package org.allbinary.graphics
unit OpenGLBitmap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bitmap, PlatformBitmapBase;

type
  {AB:TYPES}
  TOpenGLBitmap = class(TPlatformBitmapBase)
  public
    bitmap: TBitmap;
    procedure InitFields;
        constructor Create(bitmap_: TObject);
        procedure getPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure setPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        function getWidth: Integer; override;
        function getHeight: Integer; override;
        procedure recycle; virtual;
  end;

implementation

{AB:CODE}

procedure TOpenGLBitmap.InitFields;
begin
  
end;
    

constructor TOpenGLBitmap.Create(bitmap_: TObject);
begin
    inherited Create;
    InitFields;
        Self.bitmap := TBitmap(TJava.ToObject(bitmap_));
end;
    

procedure TOpenGLBitmap.getPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Self.bitmap.getPixels(pixels, offset, stride, x, y, width, height);
end;
    

procedure TOpenGLBitmap.setPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Self.bitmap.setPixels(pixels, offset, stride, x, y, width, height);
end;
    

function TOpenGLBitmap.getWidth: Integer;
begin
        Exit(Self.bitmap.getWidth());
end;
    

function TOpenGLBitmap.getHeight: Integer;
begin
        Exit(Self.bitmap.getHeight());
end;
    

procedure TOpenGLBitmap.recycle;
begin
        Self.bitmap.recycle();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

