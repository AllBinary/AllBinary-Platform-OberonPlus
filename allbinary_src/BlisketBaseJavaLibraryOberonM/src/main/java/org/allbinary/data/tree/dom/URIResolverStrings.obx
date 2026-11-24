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
// package org.allbinary.data.tree.dom
unit URIResolverStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TURIResolverStrings = class(TObject)
  public
    IMPORT_URL: string;
    ATTEMPT: string;
    BASE: string;
    NEW_PATH: string;
    NOTE: string;
    URL_GLOBAL: string;
    REQUIRED_EXTENSION: string;
    RESOLVE: string;
    class var instance: TURIResolverStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TURIResolverStrings; static;
  end;

implementation

{AB:CODE}

procedure TURIResolverStrings.InitFields;
begin
  Self.IMPORT_URL := '/{import url}';
  Self.ATTEMPT := 'attempt to use xsl:import: href=';
  Self.BASE := ''#10'Base= ';
  Self.NEW_PATH := ''#10'New path= ';
  Self.NOTE := ''#10'Note: ';
  Self.URL_GLOBAL := ' is a urlglobal';
  Self.REQUIRED_EXTENSION := ''#10'Required Extension: ';
  Self.RESOLVE := 'resolve';
end;

constructor TURIResolverStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TURIResolverStrings.getInstance: TURIResolverStrings;
begin
        Exit(TURIResolverStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TURIResolverStrings.instance := TURIResolverStrings.Create();
  {AB:END}

end.

