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
// package org.allbinary.input.automation.module.generic
unit CaptureWorkerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil;

type
  {AB:TYPES}
  TCaptureWorkerUtil = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        class procedure processProfileActionConditions(vector: TBasicArrayList; frame: Int64); static;
  end;

implementation
uses
  BasicArrayListD, ProfileActionScriptConditionInterface, CommonStrings;


{AB:CODE}

procedure TCaptureWorkerUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TCaptureWorkerUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
class procedure TCaptureWorkerUtil.processProfileActionConditions(vector: TBasicArrayList; frame: Int64);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  size: Integer;
  profileActionConditionInterface: IProfileActionScriptConditionInterface;
  index: Integer;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_.putFS(commonStrings_.START, 'CaptureWorkerUtil', 'processProfileActionConditions');
        size := vector.size();
        for index := 0 to size - 1 do begin
            profileActionConditionInterface := (TJava.ToObject(vector.get(index)) as IProfileActionScriptConditionInterface);
            if profileActionConditionInterface.shouldProcess(frame) then begin
                profileActionConditionInterface.process(frame);
            end else begin
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

