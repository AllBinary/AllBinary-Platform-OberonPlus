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
// package org.allbinary.logic.communication.http.request
unit HttpRequestUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THttpRequestUtil = class(TObject)
  public
    class var instance: THttpRequestUtil;
        class function getInstance: THttpRequestUtil; static;
        constructor Create;
        function getLastSeparatorIndex(requestPath: string): Integer; virtual;
        function generateFileName(requestPath: string): string; virtual;
  end;

implementation
uses
  AbPathData;


{AB:CODE}
    

class function THttpRequestUtil.getInstance: THttpRequestUtil;
begin
        Exit(THttpRequestUtil.instance);
end;
    

constructor THttpRequestUtil.Create;
begin
    inherited Create;
end;
    

function THttpRequestUtil.getLastSeparatorIndex(requestPath: string): Integer;
var
  beginIndex: Integer;
begin
        beginIndex := (RPos(TJava.ToString(TAbPathData.getInstance().SEPARATOR), requestPath) - 1);
        if (beginIndex) < (0) then begin
            beginIndex := (RPos(TJava.ToString('\'), requestPath) - 1);
        end;
        Exit(beginIndex);
end;
    

// throws Exception
function THttpRequestUtil.generateFileName(requestPath: string): string;
var
  beginIndex: Integer;
begin
        beginIndex := Self.getLastSeparatorIndex(requestPath);
        if (beginIndex) < (0) then begin
            Exit(requestPath);
        end else begin
            Exit(Copy(requestPath, ((beginIndex) + (1)) + 1, MaxInt));
        end;
end;

initialization
  {AB:INITIALIZATION}
  THttpRequestUtil.instance := THttpRequestUtil.Create();
  {AB:END}

end.

