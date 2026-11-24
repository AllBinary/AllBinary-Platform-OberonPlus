// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLLogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image;

type
  {AB:TYPES}
  TOpenGLLogUtil = class(TObject)
  public
    MAX_TEXTURE: string;
    LOG_ERROR: string;
    IMAGE: string;
    class var instance: TOpenGLLogUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLLogUtil; static;
        procedure logError(gl: IGL10); overload; virtual;
        procedure logError(gl: IGL10; image_: TImage); overload; virtual;
  end;

implementation
uses
  OpenGLStrings, StringMaker, ForcedLogUtil, PreLogUtil;


{AB:CODE}

procedure TOpenGLLogUtil.InitFields;
begin
  Self.MAX_TEXTURE := ' Max Texture Size: ';
  Self.LOG_ERROR := 'logError';
  Self.IMAGE := ' Image: ';
end;

constructor TOpenGLLogUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLLogUtil.getInstance: TOpenGLLogUtil;
begin
        Exit(TOpenGLLogUtil.instance);
end;
    

procedure TOpenGLLogUtil.logError(gl: IGL10);
var
  error: Integer;
  stringBuffer: TStringMaker;
  maxTextureSize: TArray<Integer>;
begin
        error := gl.glGetError();
        if (error) <> (GL10.GL_NO_ERROR) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TOpenGLStrings.getInstance().GL_ERROR_LABEL);
            stringBuffer.appendint(error);
            if (error) = (1281) then begin
                stringBuffer.append(Self.MAX_TEXTURE);
                maxTextureSize := TJava.NewArray<Integer>(1);
                gl.glGetIntegerv(GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0);
                stringBuffer.appendint(maxTextureSize[0]);
            end;
            if (error) = (1280) then begin
                TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), TOpenGLStrings.getInstance().SET_);
            end else begin
                TForcedLogUtil.log(stringBuffer.toString(), TJava.Box(Self));
            end;
        end;
end;
    

procedure TOpenGLLogUtil.logError(gl: IGL10; image_: TImage);
var
  error: Integer;
  stringBuffer: TStringMaker;
  maxTextureSize: TArray<Integer>;
begin
        error := gl.glGetError();
        if (error) <> (GL10.GL_NO_ERROR) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TOpenGLStrings.getInstance().GL_ERROR_LABEL);
            stringBuffer.appendint(error);
            if (error) = (1281) then begin
                stringBuffer.append(Self.MAX_TEXTURE);
                maxTextureSize := TJava.NewArray<Integer>(1);
                gl.glGetIntegerv(GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0);
                stringBuffer.appendint(maxTextureSize[0]);
            end;
            stringBuffer.append(Self.IMAGE);
            stringBuffer.append(image_.toString());
            TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), Self.LOG_ERROR);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLLogUtil.instance := TOpenGLLogUtil.Create();
  {AB:END}

end.

