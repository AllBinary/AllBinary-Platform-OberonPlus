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
// package org.allbinary.logic.communication.log
unit LogData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLogData = class(TObject)
  public
    MAX: Int64;
    extension: string;
    backupFileExt: string;
    ALLBINARY: string;
    NAME: string;
    DESCRIPTION: string;
    procedure InitFields;
    constructor Create;
  end;

implementation
uses
  AbPathData;


{AB:CODE}

procedure TLogData.InitFields;
begin
  Self.MAX := 5000000;
  Self.extension := 'log';
  Self.backupFileExt := TJava.ToString(TAbPathData.getInstance().EXTENSION_SEP) + 'bak' + TJava.ToString(TAbPathData.getInstance().EXTENSION_SEP) + 'txt';
  Self.ALLBINARY := 'allbinary';
  Self.NAME := 'LOG_NAME';
  Self.DESCRIPTION := 'LOG_DESCRIPTION';
end;

constructor TLogData.Create;
begin
  inherited Create;
  InitFields;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

