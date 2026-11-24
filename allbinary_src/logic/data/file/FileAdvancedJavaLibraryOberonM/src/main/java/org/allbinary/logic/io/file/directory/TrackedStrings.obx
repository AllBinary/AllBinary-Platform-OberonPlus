{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file.directory
unit TrackedStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTrackedStrings = class(TObject)
  public
    TARGET_PATH_WINDOWS: string;
    TARGET_PATH_UNIX: string;
    HTML_TEMP: string;
    APPLICATION: string;
    APP: string;
    GIT_COMMAND: string;
    CHANGE_DIRECTORY_OPTION: string;
    LIST_FILES_COMMAND: string;
    ERROR_UNMATCH_OPTION: string;
    PATHSPEC_SEPARATOR: string;
    SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE: string;
    class var instance: TTrackedStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTrackedStrings; static;
  end;

implementation

{AB:CODE}

procedure TTrackedStrings.InitFields;
begin
  Self.TARGET_PATH_WINDOWS := '\'#9'arget\';
  Self.TARGET_PATH_UNIX := '/target/';
  Self.HTML_TEMP := 'HTMLTemp';
  Self.APPLICATION := 'Application';
  Self.APP := '\app';
  Self.GIT_COMMAND := 'git';
  Self.CHANGE_DIRECTORY_OPTION := '-C';
  Self.LIST_FILES_COMMAND := 'ls-files';
  Self.ERROR_UNMATCH_OPTION := '--error-unmatch';
  Self.PATHSPEC_SEPARATOR := '--';
  Self.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE := '-z';
end;

constructor TTrackedStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTrackedStrings.getInstance: TTrackedStrings;
begin
        Exit(TTrackedStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TTrackedStrings.instance := TTrackedStrings.Create();
  {AB:END}

end.

