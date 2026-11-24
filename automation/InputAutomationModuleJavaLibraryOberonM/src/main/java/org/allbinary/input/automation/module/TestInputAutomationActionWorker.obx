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
// package org.allbinary.input.automation.module
unit TestInputAutomationActionWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageComparatorConstraintsInterface, MotionRectangleConstraintsInterface, InputAutomationActionInterface, AbstractInputAutomationWorker;

type
  {AB:TYPES}
  TTestInputAutomationActionWorker = class(TAbstractInputAutomationWorker)
  public
    logUtil: TLogUtil;
    sleep: Integer;
    procedure InitFields;
        constructor Create(sleep: Integer; inputAutomationActionInterface_: IInputAutomationActionInterface; imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface; motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface);
        procedure processBetweenWorkers; virtual;
        procedure process; virtual;
  end;

implementation
uses
  InputRobotFactory, InputRobotInterface, ABHashtable;


{AB:CODE}

procedure TTestInputAutomationActionWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TTestInputAutomationActionWorker.Create(sleep: Integer; inputAutomationActionInterface_: IInputAutomationActionInterface; imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface; motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface);
begin
        inherited Create(inputAutomationActionInterface_);
        InitFields;
        Self.logUtil.putF('BasicTestAttackWorder', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.sleep := sleep;
end;
    

// throws Exception
procedure TTestInputAutomationActionWorker.processBetweenWorkers;
begin
        SysUtils.Sleep(2000);
end;
    

// throws Exception
procedure TTestInputAutomationActionWorker.process;
var
  hashtable: TABHashtable<TObject, TObject>;
  set_: ISet;
  inputTypeNameArray: TArray<TObject>;
  size: Integer;
  inputTypeNameString: string;
  robot: IInputRobotInterface;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.PROCESS);
        hashtable := TInputRobotFactory.getInstance().get();
        set_ := hashtable.keySet();
        inputTypeNameArray := set_.toArray();
        size := System.Length(inputTypeNameArray);
        for index := 0 to size - 1 do begin
            inputTypeNameString := TJava.UnboxString(TJava.ToObject(inputTypeNameArray[index]));
            robot := (TJava.ToObject(hashtable.get(TJava.Box(inputTypeNameString))) as IInputRobotInterface);
            if (Self.sleep) > (0) then begin
                SysUtils.Sleep(Self.sleep);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

