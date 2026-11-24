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
unit MouseInputAutomationProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MouseActionScriptInputInterface;

type
  {AB:TYPES}
  TMouseInputAutomationProcessor = class(TObject)
  public
        constructor Create;
        class procedure process(mouseActionScriptInputInterface_: IMouseActionScriptInputInterface); static;
  end;

implementation
uses
  InputRobotInterface, LogUtil, StringMaker, CommonStrings;


{AB:CODE}
    

constructor TMouseInputAutomationProcessor.Create;
begin
    inherited Create;
end;
    

// throws Exception
class procedure TMouseInputAutomationProcessor.process(mouseActionScriptInputInterface_: IMouseActionScriptInputInterface);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  inputRobotInterface_: IInputRobotInterface;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_.putFS(TStringMaker.Create().append('Start - Processing Mouse Input at: ').append(mouseActionScriptInputInterface_.getPoint().toString()).append(' clicks: ').appendint(Integer(Trunc(mouseActionScriptInputInterface_.getButtonClicks()))).toString(), 'MouseInputAutomationProcessor', commonStrings_.PROCESS);
        inputRobotInterface_ := mouseActionScriptInputInterface_.getInputRobotInterface();
        if ((mouseActionScriptInputInterface_.getPoint().x) <> (-1)) and ((mouseActionScriptInputInterface_.getPoint().y) <> (-1)) then begin
            inputRobotInterface_.mouseMove(mouseActionScriptInputInterface_.getPoint());
        end;
        SysUtils.Sleep(mouseActionScriptInputInterface_.getTime());
        if (mouseActionScriptInputInterface_.getButtonClicks()) <> (0) then begin
            inputRobotInterface_.mousePress(mouseActionScriptInputInterface_.getButtonClicks());
            SysUtils.Sleep(mouseActionScriptInputInterface_.getTime());
            inputRobotInterface_.mouseRelease(mouseActionScriptInputInterface_.getButtonClicks());
        end;
        SysUtils.Sleep(mouseActionScriptInputInterface_.getTime());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

