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
unit LoadedShaderManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShaderManager;

type
  {AB:TYPES}
  TLoadedShaderManager = class(TObject)
  public
    class var instance: TShaderManager;
    constructor Create;
        class function getInstance: TShaderManager; static;
  end;

implementation

{AB:CODE}

constructor TLoadedShaderManager.Create;
begin
  inherited Create;
end;
    

class function TLoadedShaderManager.getInstance: TShaderManager;
begin
        Exit(TLoadedShaderManager.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLoadedShaderManager.instance := TShaderManager.Create(-1, -1);
  {AB:END}

end.

