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
unit NullShaderComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLProcessor, ShaderComposite, CompositeShaderUpdater, ShaderInitializer, ModelViewProjection;

type
  {AB:TYPES}
  TNullShaderComposite = class(TShaderComposite)
  public
    class var instance: TNullShaderComposite;
        class function getInstance: TShaderComposite; static;
        constructor Create(requiresOpenGLVersion: string; shaderArray: TArray<TShader>; compositeShaderUpdater_: TCompositeShaderUpdater; shaderInitializer_: TShaderInitializer; modelViewProjection_: TModelViewProjection; colorOpenGLProcessor: TOpenGLProcessor; vertexOpenGLProcessor: TOpenGLProcessor; disableProgramShaderOpenGLProcessor: TOpenGLProcessor);
  end;

implementation
uses
  GL10, NullOpenGLProcessorFactory, OpenGLCapabilities;


{AB:CODE}
    

class function TNullShaderComposite.getInstance: TShaderComposite;
begin
        Exit(TNullShaderComposite.instance);
end;
    

constructor TNullShaderComposite.Create(requiresOpenGLVersion: string; shaderArray: TArray<TShader>; compositeShaderUpdater_: TCompositeShaderUpdater; shaderInitializer_: TShaderInitializer; modelViewProjection_: TModelViewProjection; colorOpenGLProcessor: TOpenGLProcessor; vertexOpenGLProcessor: TOpenGLProcessor; disableProgramShaderOpenGLProcessor: TOpenGLProcessor);
begin
        inherited Create(requiresOpenGLVersion, shaderArray, compositeShaderUpdater_, shaderInitializer_, modelViewProjection_, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor);
        Self.useProgramShaderOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
end;

initialization
  {AB:INITIALIZATION}
  TNullShaderComposite.instance := TNullShaderComposite.Create(TOpenGLCapabilities.getInstance().VERSION_2_0, TArray<TShader>.Create(TShader.Create(), TShader.Create()), TCompositeShaderUpdater.getInstance(), TShaderInitializer.getInstance(), TModelViewProjection.getInstance(), TNullOpenGLProcessorFactory.getInstance(), TNullOpenGLProcessorFactory.getInstance(), TNullOpenGLProcessorFactory.getInstance()) (* Java anonymous class body: implement it as a named class
        

    procedure T.init(gl: IGL10);
begin
end;
*);
  {AB:END}

end.

