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
// package org.allbinary.system
unit Memory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TMemory = class(TObject)
  public
    constructor Create;
        class function getInfo: string; static;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

constructor TMemory.Create;
begin
  inherited Create;
end;
    

class function TMemory.getInfo: string;
var
  stringBuffer: TStringMaker;
  maxUtilizedMemoryAvailable: Int64;
  memoryUsed: Int64;
begin
        stringBuffer := TStringMaker.Create();
        maxUtilizedMemoryAvailable := TJava.MaxMemory;
        memoryUsed := TJava.TotalMemory;
        stringBuffer.append('APK Memory: Available: ');
        stringBuffer.appendlong(maxUtilizedMemoryAvailable);
        stringBuffer.append('/');
        stringBuffer.appendlong(Int64(Trunc(TJava.MaxMemory)));
        stringBuffer.append(' Used: ');
        stringBuffer.appendlong(memoryUsed);
        stringBuffer.append(' Free: ');
        stringBuffer.appendlong((maxUtilizedMemoryAvailable) - (memoryUsed));
        stringBuffer.append('/');
        stringBuffer.appendlong(Int64(Trunc((TJava.MaxMemory) - (memoryUsed))));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

