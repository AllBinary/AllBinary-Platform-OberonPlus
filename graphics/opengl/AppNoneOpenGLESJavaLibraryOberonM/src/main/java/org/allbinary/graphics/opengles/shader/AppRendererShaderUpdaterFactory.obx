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
// package org.allbinary.graphics.opengles.shader
unit AppRendererShaderUpdaterFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShaderComposite, ShaderOpenGLProcessor, ShaderUpdater;

type
  {AB:TYPES}
  TAppRendererShaderUpdaterFactory = class(TShaderUpdater)
  public
    NULL_SHADER_COMPOSITE_ARRAY: TArray<TShaderComposite>;
    shaderCompositeArray: TArray<TShaderComposite>;
    shaderOpenGLProcessorArray: TArray<TShaderOpenGLProcessor>;
    class var instanceC: TAppRendererShaderUpdaterFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAppRendererShaderUpdaterFactory; static;
        function getTestShaders: TArray<TShaderOpenGLProcessor>; virtual;
        procedure setShaderComposite(object3d: TObject); virtual;
  end;

implementation

{AB:CODE}

procedure TAppRendererShaderUpdaterFactory.InitFields;
begin
  Self.NULL_SHADER_COMPOSITE_ARRAY := nil;
  Self.shaderCompositeArray := Self.NULL_SHADER_COMPOSITE_ARRAY;
  Self.shaderOpenGLProcessorArray := nil;
end;

constructor TAppRendererShaderUpdaterFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAppRendererShaderUpdaterFactory.getInstance: TAppRendererShaderUpdaterFactory;
begin
        Exit(TAppRendererShaderUpdaterFactory.instanceC);
end;
    

function TAppRendererShaderUpdaterFactory.getTestShaders: TArray<TShaderOpenGLProcessor>;
begin
        Exit(Self.shaderOpenGLProcessorArray);
end;
    

procedure TAppRendererShaderUpdaterFactory.setShaderComposite(object3d: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TAppRendererShaderUpdaterFactory.instanceC := TAppRendererShaderUpdaterFactory.Create();
  {AB:END}

end.

