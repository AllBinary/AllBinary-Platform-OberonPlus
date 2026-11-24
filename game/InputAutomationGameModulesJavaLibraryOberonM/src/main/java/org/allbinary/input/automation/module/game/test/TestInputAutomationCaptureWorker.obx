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
// package org.allbinary.input.automation.module.game.test
unit TestInputAutomationCaptureWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbstractInputAutomationWorker, InputAutomationActionInterface, GenericProfileActions, LogUtil, ImageComparatorConstraintsInterface, MotionRectangleConstraintsInterface;

type
  {AB:TYPES}
  TTestInputAutomationCaptureWorker = class(TAbstractInputAutomationWorker)
  public
    logUtil: TLogUtil;
    genericProfileActions: TGenericProfileActions;
    MESSAGE: string;
    PROCESS_DATA_WORKER_RESULTS: string;
    IMAGE_AVAILABLE_SO_PROCESSING: string;
    IMAGE_NOT_AVAILABLE: string;
    procedure InitFields;
        constructor Create(inputAutomationActionInterface_: IInputAutomationActionInterface; genericProfileActions_: TGenericProfileActions; imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface; motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface);
        procedure processDataWorkerResults; virtual;
        procedure process; virtual;
        function getGenericProfileActions: TGenericProfileActions; virtual;
        procedure setGenericProfileActions(genericProfileActions_: TGenericProfileActions); virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, GenericProfileAction, GenericProfileActionScript, CapturedBufferedImagesCacheSingleton, J2SECacheInterface;


{AB:CODE}

procedure TTestInputAutomationCaptureWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.MESSAGE := 'GenericInputAutomationCaptureWorker';
  Self.PROCESS_DATA_WORKER_RESULTS := 'processDataWorkerResults';
  Self.IMAGE_AVAILABLE_SO_PROCESSING := 'Image Available so processing';
  Self.IMAGE_NOT_AVAILABLE := 'Image Not Available';
end;
    

constructor TTestInputAutomationCaptureWorker.Create(inputAutomationActionInterface_: IInputAutomationActionInterface; genericProfileActions_: TGenericProfileActions; imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface; motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface);
begin
        inherited Create(inputAutomationActionInterface_);
        InitFields;
        Self.logUtil.putF(Self.MESSAGE, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.setGenericProfileActions(genericProfileActions_);
end;
    

// throws Exception
procedure TTestInputAutomationCaptureWorker.processDataWorkerResults;
var
  cacheInterface: IJ2SECacheInterface;
  anyType: TObject;
  hashMap_: TJavaHashMap<TObject, TObject>;
  set_: ISet;
  actionNameArray: TArray<TObject>;
  size: Integer;
  actionNameString: string;
  genericProfileAction_: TGenericProfileAction;
  genericProfileActionScript_: TGenericProfileActionScript;
  vector: TBasicArrayList;
  index: Integer;
begin
        cacheInterface := (TJava.ToObject(TCapturedBufferedImagesCacheSingleton.getInstance()) as IJ2SECacheInterface);
        if (cacheInterface.keySet().size()) > (0) then begin
            Self.logUtil.putF(Self.IMAGE_AVAILABLE_SO_PROCESSING, TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
            anyType := TJava.Box(cacheInterface.keySet().toArray()[0]);
            hashMap_ := Self.getGenericProfileActions().getHashMap();
            set_ := hashMap_.keySet();
            actionNameArray := set_.toArray();
            size := System.Length(actionNameArray);
            for index := 0 to size - 1 do begin
                actionNameString := TJava.UnboxString(TJava.ToObject(actionNameArray[index]));
                genericProfileAction_ := TGenericProfileAction(TJava.ToObject(hashMap_.get(TJava.Box(actionNameString))));
                genericProfileActionScript_ := genericProfileAction_.getGenericProfileActionScript();
                vector := genericProfileActionScript_.getProfileActionConditionInterfaceVector();
            end;
            cacheInterface.get(anyType);
        end else begin
            Self.logUtil.putF(Self.IMAGE_NOT_AVAILABLE, TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
        end;
end;
    

// throws Exception
procedure TTestInputAutomationCaptureWorker.process;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.PROCESS);
        Self.startDataWorkers();
        Self.processDataWorkerResults();
end;
    

function TTestInputAutomationCaptureWorker.getGenericProfileActions: TGenericProfileActions;
begin
        Exit(Self.genericProfileActions);
end;
    

procedure TTestInputAutomationCaptureWorker.setGenericProfileActions(genericProfileActions_: TGenericProfileActions);
begin
        Self.genericProfileActions := genericProfileActions_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

