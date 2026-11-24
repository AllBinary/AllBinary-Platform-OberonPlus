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
// package org.allbinary.logic.io.file
unit FileUnamedUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonSeps;

type
  {AB:TYPES}
  TFileUnamedUtil = class(TObject)
  public
    commonSeps: TCommonSeps;
    class var instance: TFileUnamedUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFileUnamedUtil; static;
        function process(string_: string): string; virtual;
  end;

implementation

{AB:CODE}

procedure TFileUnamedUtil.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
end;

constructor TFileUnamedUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFileUnamedUtil.getInstance: TFileUnamedUtil;
begin
        Exit(TFileUnamedUtil.instance);
end;
    

function TFileUnamedUtil.process(string_: string): string;
var
  simplifiedString: string;
begin
        simplifiedString := LowerCase(string_);
        simplifiedString := StringReplace(simplifiedString, Self.commonSeps.SPACE, Self.commonSeps.UNDERSCORE, [rfReplaceAll]);
        simplifiedString := StringReplace(simplifiedString, Self.commonSeps.DASH, Self.commonSeps.UNDERSCORE, [rfReplaceAll]);
        Exit(simplifiedString);
end;

initialization
  {AB:INITIALIZATION}
  TFileUnamedUtil.instance := TFileUnamedUtil.Create();
  {AB:END}

end.

