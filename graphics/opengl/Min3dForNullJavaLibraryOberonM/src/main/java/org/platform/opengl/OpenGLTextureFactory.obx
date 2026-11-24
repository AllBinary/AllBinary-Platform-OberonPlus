// Generated Code Do Not Modify
// package org.platform.opengl
unit OpenGLTextureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, PlatformTextureBaseFactory, OpenGLGLUUtils;

type
  {AB:TYPES}
  TOpenGLTextureFactory = class(TPlatformTextureBaseFactory)
  public
    gluUtils: TOpenGLGLUUtils;
    class var instance: TOpenGLTextureFactory;
    procedure InitFields;
        class function getInstance: TOpenGLTextureFactory; static;
        constructor Create;
        procedure load(gl: IGL10; target: Integer; level: Integer; image_: TImage; border: Integer; flip: Boolean); override;
  end;

implementation

{AB:CODE}

procedure TOpenGLTextureFactory.InitFields;
begin
  Self.gluUtils := TOpenGLGLUUtils.getInstance();
end;
    

class function TOpenGLTextureFactory.getInstance: TOpenGLTextureFactory;
begin
        Exit(TOpenGLTextureFactory.instance);
end;
    

constructor TOpenGLTextureFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOpenGLTextureFactory.load(gl: IGL10; target: Integer; level: Integer; image_: TImage; border: Integer; flip: Boolean);
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLTextureFactory.instance := TOpenGLTextureFactory.Create();
  {AB:END}

end.

