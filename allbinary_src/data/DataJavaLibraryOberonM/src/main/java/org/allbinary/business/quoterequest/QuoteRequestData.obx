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
// package org.allbinary.business.quoterequest
unit QuoteRequestData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TQuoteRequestData = class(TObject)
  public
    ID: string;
    PROJECT_INFO: string;
    CUSTOMER_COMMENTS: string;
    BUDGET: string;
    TIMEFRAME: string;
    COMMENTS: string;
    class var instance: TQuoteRequestData;
    procedure InitFields;
        class function getInstance: TQuoteRequestData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TQuoteRequestData.InitFields;
begin
  Self.ID := 'QUOTEREQUEST_ID';
  Self.PROJECT_INFO := 'QUOTEREQUEST_PROJECT_INFO';
  Self.CUSTOMER_COMMENTS := 'QUOTEREQUEST_CUSTOMER_COMMENTS';
  Self.BUDGET := 'QUOTEREQUEST_BUDGET';
  Self.TIMEFRAME := 'QUOTEREQUEST_TIMEFRAME';
  Self.COMMENTS := 'QUOTEREQUEST_COMMENTS';
end;
    

class function TQuoteRequestData.getInstance: TQuoteRequestData;
begin
        Exit(TQuoteRequestData.instance);
end;
    

constructor TQuoteRequestData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TQuoteRequestData.instance := TQuoteRequestData.Create();
  {AB:END}

end.

