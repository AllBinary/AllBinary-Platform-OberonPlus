// Generated Code Do Not Modify
// package org.allbinary.graphics
unit OpenGLBitmapFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, PlatformBitmapBaseFactory, PlatformBitmapBase, OpenGLBitmapConfig, OpenGLBitmap;

type
  {AB:TYPES}
  TOpenGLBitmapFactory = class(TPlatformBitmapBaseFactory)
  public
    ARGB_8888: TOpenGLBitmapConfig;
    class var instance: TOpenGLBitmapFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLBitmapFactory; static;
        function createBitmap(width: Integer; height: Integer; config: TOpenGLBitmapConfig): TOpenGLBitmap; overload; virtual;
        function decodeStream(inputStream_: TInputStream): TOpenGLBitmap; virtual;
        function createBitmap(image_: TImage): TPlatformBitmapBase; overload; override;
  end;

implementation
uses
  Bitmap, BitmapFactory, AndroidImageInterface;


{AB:CODE}

procedure TOpenGLBitmapFactory.InitFields;
begin
  Self.ARGB_8888 := TOpenGLBitmapConfig.Create(TJava.Box(TBitmap.Config.ARGB_8888));
end;

constructor TOpenGLBitmapFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLBitmapFactory.getInstance: TOpenGLBitmapFactory;
begin
        Exit(TOpenGLBitmapFactory.instance);
end;
    

function TOpenGLBitmapFactory.createBitmap(width: Integer; height: Integer; config: TOpenGLBitmapConfig): TOpenGLBitmap;
begin
        Exit(TOpenGLBitmap.Create(TJava.Box(TBitmap.createBitmap(width, height, config.bitmapConfig))));
end;
    

// throws IOException
function TOpenGLBitmapFactory.decodeStream(inputStream_: TInputStream): TOpenGLBitmap;
begin
        Exit(TOpenGLBitmap.Create(TJava.Box(TBitmapFactory.decodeStream(inputStream_))));
end;
    

function TOpenGLBitmapFactory.createBitmap(image_: TImage): TPlatformBitmapBase;
begin
        Exit(TOpenGLBitmap.Create(TJava.Box(((TJava.ToObject(image_) as IAndroidImageInterface)).getBitmap())));
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLBitmapFactory.instance := TOpenGLBitmapFactory.Create();
  {AB:END}

end.

