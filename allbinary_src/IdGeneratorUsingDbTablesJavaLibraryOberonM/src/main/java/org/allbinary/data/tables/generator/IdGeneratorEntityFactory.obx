{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.data.tables.generator
unit IdGeneratorEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, IdGeneratorEntityInterface;

type
  {AB:TYPES}
  TIdGeneratorEntityFactory = class(TObject)
  public
        constructor Create;
        class function getInstance: IIdGeneratorEntityInterface; static;
  end;

implementation
uses
  IdGeneratorEntity, LogUtil, CommonStrings;


{AB:CODE}
    

constructor TIdGeneratorEntityFactory.Create;
begin
    inherited Create;
end;
    

class function TIdGeneratorEntityFactory.getInstance: IIdGeneratorEntityInterface;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        try
            Exit((TJava.ToObject(TIdGeneratorEntity.Create()) as IIdGeneratorEntityInterface));
        except
            on e: SysUtils.Exception do begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('ServerLicenseRequestEntityFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

