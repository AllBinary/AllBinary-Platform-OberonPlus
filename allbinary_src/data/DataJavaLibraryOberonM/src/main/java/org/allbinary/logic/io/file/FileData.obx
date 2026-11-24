{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
unit FileData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFileData = class(TObject)
  public
    NAME: string;
    ISFILE: string;
    ISDIRECTORY: string;
    ISHIDDEN: string;
    ISABSOLUTE: string;
    ROOT_NAME: string;
    PATH: string;
    ABSOLUTE_PATH: string;
    CANONICAL_PATH: string;
    PARENT: string;
    MINLEN: Integer;
    MAXLEN: Integer;
    MAXIMAGEFILESIZE: Integer;
    MINIMAGEFILESIZE: Integer;
    MAXDOWNLOADABLEFILESIZE: Integer;
    MINDOWNLOADABLEFILESIZE: Integer;
    class var instance: TFileData;
    procedure InitFields;
        class function getInstance: TFileData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TFileData.InitFields;
begin
  Self.NAME := 'FILE_NAME';
  Self.ISFILE := 'FILE_ISFILE';
  Self.ISDIRECTORY := 'FILE_ISDIRECTORY';
  Self.ISHIDDEN := 'FILE_ISHIDDEN';
  Self.ISABSOLUTE := 'FILE_ISABSOLUTE';
  Self.ROOT_NAME := 'FILE_ROOT_NAME';
  Self.PATH := 'FILE_PATH';
  Self.ABSOLUTE_PATH := 'FILE_ABSOLUTE_PATH';
  Self.CANONICAL_PATH := 'FILE_CANONICAL_PATH';
  Self.PARENT := 'FILE_PARENT';
  Self.MINLEN := 1;
  Self.MAXLEN := 120;
  Self.MAXIMAGEFILESIZE := 1048576;
  Self.MINIMAGEFILESIZE := 32;
  Self.MAXDOWNLOADABLEFILESIZE := (1048576) * (20);
  Self.MINDOWNLOADABLEFILESIZE := 1;
end;
    

class function TFileData.getInstance: TFileData;
begin
        Exit(TFileData.instance);
end;
    

constructor TFileData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TFileData.instance := TFileData.Create();
  {AB:END}

end.

