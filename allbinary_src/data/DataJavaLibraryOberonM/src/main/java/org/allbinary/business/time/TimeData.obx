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
// package org.allbinary.business.time
unit TimeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTimeData = class(TObject)
  public
    NAME: string;
    START: string;
    END_: string;
    class var instance: TTimeData;
    procedure InitFields;
        class function getInstance: TTimeData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TTimeData.InitFields;
begin
  Self.NAME := 'TIME_NAME';
  Self.START := 'TIME_START';
  Self.END_ := 'TIME_END';
end;
    

class function TTimeData.getInstance: TTimeData;
begin
        Exit(TTimeData.instance);
end;
    

constructor TTimeData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TTimeData.instance := TTimeData.Create();
  {AB:END}

end.

