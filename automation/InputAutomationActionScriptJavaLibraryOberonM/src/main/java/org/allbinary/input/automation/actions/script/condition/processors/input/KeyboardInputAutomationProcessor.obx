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
// package org.allbinary.input.automation.actions.script.condition.processors.input
unit KeyboardInputAutomationProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, KeyboardActionScriptInputInterface;

type
  {AB:TYPES}
  TKeyboardInputAutomationProcessor = class(TObject)
  public
        constructor Create;
        class procedure process(keyActionScriptInputInterface: IKeyboardActionScriptInputInterface); static;
  end;

implementation
uses
  InputRobotInterface, LogUtil, CommonLabels, CommonStrings, TimeDelayHelper;


{AB:CODE}
    

constructor TKeyboardInputAutomationProcessor.Create;
begin
    inherited Create;
end;
    

// throws Exception
class procedure TKeyboardInputAutomationProcessor.process(keyActionScriptInputInterface: IKeyboardActionScriptInputInterface);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  inputRobotInterface_: IInputRobotInterface;
  integer_: TArray<Integer>;
  timeHelper: TTimeDelayHelper;
  toLong: Integer;
  index: Integer;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_.putFS(TJava.ToString(TCommonLabels.getInstance().START) + TJava.ToString(TJava.ToObject(keyActionScriptInputInterface)), 'KeyInputAutomationProcessor', commonStrings_.PROCESS);
        inputRobotInterface_ := keyActionScriptInputInterface.getInputRobotInterface();
        integer_ := keyActionScriptInputInterface.getKeyArray();
        if (keyActionScriptInputInterface.getDelayBetweenKeys()) = (0) then begin
            for index := 0 to System.Length(keyActionScriptInputInterface.getKeyArray()) - 1 do begin
                if keyActionScriptInputInterface.isPress() then begin
                    inputRobotInterface_.keyPress(integer_[index]);
                end;
            end;
            SysUtils.Sleep(keyActionScriptInputInterface.getTime());
            for index := (System.Length(keyActionScriptInputInterface.getKeyArray())) - (1) downto 0 do begin
                if keyActionScriptInputInterface.isRelease() then begin
                    inputRobotInterface_.keyRelease(integer_[index]);
                end;
            end;
        end else begin
            for index := 0 to System.Length(keyActionScriptInputInterface.getKeyArray()) - 1 do begin
                if keyActionScriptInputInterface.isPress() then begin
                    inputRobotInterface_.keyPress(integer_[index]);
                end;
                SysUtils.Sleep(keyActionScriptInputInterface.getTime());
                if keyActionScriptInputInterface.isRelease() then begin
                    inputRobotInterface_.keyRelease(integer_[index]);
                end;
                timeHelper := TTimeDelayHelper.Create(keyActionScriptInputInterface.getDelayBetweenKeys());
                toLong := 0;
                while (not (timeHelper.isTimeTNT())) or ((toLong) > (6000)) do begin
                    Inc(toLong);
                    SysUtils.Sleep(50);
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

