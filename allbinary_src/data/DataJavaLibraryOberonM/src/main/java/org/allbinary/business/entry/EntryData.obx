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
// package org.allbinary.business.entry
unit EntryData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TEntryData = class(TObject)
  public
    ID: string;
    ENCRYPTION: string;
    TIMECREATED: string;
    LASTMODIFIED: string;
    DEFAULT: string;
    SPECIAL: string;
    ENABLE: string;
    YES: string;
    NO: string;
    class var instance: TEntryData;
    procedure InitFields;
        class function getInstance: TEntryData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TEntryData.InitFields;
begin
  Self.ID := 'ENTRY_ID';
  Self.ENCRYPTION := 'ENTRY_ENCRYPTION';
  Self.TIMECREATED := 'ENTRY_TIMECREATED';
  Self.LASTMODIFIED := 'ENTRY_LASTMODIFIED';
  Self.DEFAULT := 'ENTRY_DEFAULT';
  Self.SPECIAL := 'ENTRY_SPECIAL';
  Self.ENABLE := 'ENTRY_ENABLE';
  Self.YES := 'Yes';
  Self.NO := 'No';
end;
    

class function TEntryData.getInstance: TEntryData;
begin
        Exit(TEntryData.instance);
end;
    

constructor TEntryData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TEntryData.instance := TEntryData.Create();
  {AB:END}

end.

