{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLVersionValidator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShaderComposite;

type
  {AB:TYPES}
  TOpenGLVersionValidator = class(TObject)
  public
    EGL_CONTEXT_CLIENT_VERSION_VALUE: Integer;
    class var instance: TOpenGLVersionValidator;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLVersionValidator; static;
        function isGL31OrHigher: Boolean; virtual;
        function isAvailable(glVersionRequired: string): Boolean; virtual;
        procedure setShaderComposite(shaderComposite_: TShaderComposite; anyType: TObject); virtual;
  end;

implementation

{AB:CODE}

procedure TOpenGLVersionValidator.InitFields;
begin
  Self.EGL_CONTEXT_CLIENT_VERSION_VALUE := -1;
end;

constructor TOpenGLVersionValidator.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLVersionValidator.getInstance: TOpenGLVersionValidator;
begin
        Exit(TOpenGLVersionValidator.instance);
end;
    

function TOpenGLVersionValidator.isGL31OrHigher: Boolean;
begin
        Exit(False);
end;
    

function TOpenGLVersionValidator.isAvailable(glVersionRequired: string): Boolean;
begin
        Exit(False);
end;
    

procedure TOpenGLVersionValidator.setShaderComposite(shaderComposite_: TShaderComposite; anyType: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLVersionValidator.instance := TOpenGLVersionValidator.Create();
  {AB:END}

end.

