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
unit OrthogonalLightingOpenGLProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLProcessor;

type
  {AB:TYPES}
  TOrthogonalLightingOpenGLProcessorFactory = class(TObject)
  public
    sceneLightingOrthogonalModeOpenGLProcessor: TOpenGLProcessor;
    sceneLightsOrthogonalModeOpenGLProcessor: TOpenGLProcessor;
    class var instance: TOrthogonalLightingOpenGLProcessorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOrthogonalLightingOpenGLProcessorFactory; static;
  end;

implementation
uses
  NullOpenGLProcessorFactory;


{AB:CODE}

procedure TOrthogonalLightingOpenGLProcessorFactory.InitFields;
begin
  Self.sceneLightingOrthogonalModeOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.sceneLightsOrthogonalModeOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
end;

constructor TOrthogonalLightingOpenGLProcessorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOrthogonalLightingOpenGLProcessorFactory.getInstance: TOrthogonalLightingOpenGLProcessorFactory;
begin
        Exit(TOrthogonalLightingOpenGLProcessorFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TOrthogonalLightingOpenGLProcessorFactory.instance := TOrthogonalLightingOpenGLProcessorFactory.Create();
  {AB:END}

end.

