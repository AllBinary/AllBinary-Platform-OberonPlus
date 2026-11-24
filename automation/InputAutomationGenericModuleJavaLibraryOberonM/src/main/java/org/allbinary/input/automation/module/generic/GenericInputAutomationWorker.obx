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
unit GenericInputAutomationWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbstractInputAutomationWorker, InputAutomationActionInterface, GenericProfile, LogUtil, ImageComparatorConstraintsInterface, MotionRectangleConstraintsInterface;

type
  {AB:TYPES}
  TGenericInputAutomationWorker = class(TAbstractInputAutomationWorker)
  public
    logUtil: TLogUtil;
    PROCESS_DATA_WORKER_RESULTS: string;
    lastFrame: Int64;
    frame: Int64;
    genericProfile: TGenericProfile;
    procedure InitFields;
        constructor Create(inputAutomationActionInterface_: IInputAutomationActionInterface; genericProfile_: TGenericProfile; motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface; imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface);
        procedure processDataWorkerResults; virtual;
        procedure process; virtual;
        function getGenericProfile: TGenericProfile; virtual;
        procedure setGenericProfile(genericProfile_: TGenericProfile); virtual;
        function getFrame: Int64; virtual;
        procedure setFrame(frame: Int64); virtual;
  end;

implementation
uses
  GenericProfileCaptureWorkerFactory, CaptureWorkerUtil, BasicArrayList, BasicArrayListD, GenericProfileDataWorkerType, GenericProfileAction, GenericProfileActionScript, CapturedBufferedImagesCacheSingleton, J2SECacheInterface, ImageComparisonWorker, MotionRectanglesWorker;


{AB:CODE}

procedure TGenericInputAutomationWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.PROCESS_DATA_WORKER_RESULTS := 'processDataWorkerResults';
  Self.lastFrame := -1;
  
  
end;
    

constructor TGenericInputAutomationWorker.Create(inputAutomationActionInterface_: IInputAutomationActionInterface; genericProfile_: TGenericProfile; motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface; imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface);
var
  vector: TBasicArrayList;
  size: Integer;
  genericProfileDataWorkerType_: TGenericProfileDataWorkerType;
  index: Integer;
begin
        inherited Create(inputAutomationActionInterface_);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.setCaptureWorker(TGenericProfileCaptureWorkerFactory.getInstance(genericProfile_));
        Self.setInputAutomationActionInterface(inputAutomationActionInterface_);
        Self.setImageComparisonWorker(TImageComparisonWorker.Create(imageComparatorConstraintsInterface_));
        Self.setMotionRectanglesWorker(TMotionRectanglesWorker.Create(motionRectangleConstraintsInterface_));
        Self.setGenericProfile(genericProfile_);
        vector := Self.getGenericProfile().getGenericProfileDataWorkerTypeVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            genericProfileDataWorkerType_ := TGenericProfileDataWorkerType(TJava.ToObject(vector.get(index)));
            Self.logUtil.putF('Adding Listener: ' + TJava.ToString(genericProfileDataWorkerType_), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.COMPARISON) then begin
                Self.getCaptureWorker().addListenerInterface(Self.getImageComparisonWorker());
            end else if (genericProfileDataWorkerType_) = (TGenericProfileDataWorkerType.MOTION) then begin
                Self.getImageComparisonWorker().addListenerInterface(Self.getMotionRectanglesWorker());
            end;
        end;
end;
    

// throws Exception
procedure TGenericInputAutomationWorker.processDataWorkerResults;
var
  cacheInterface: IJ2SECacheInterface;
  keyArray: TArray<TObject>;
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
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
        Self.waitForDataWorkers();
        cacheInterface := (TJava.ToObject(TCapturedBufferedImagesCacheSingleton.getInstance()) as IJ2SECacheInterface);
        keyArray := cacheInterface.keySet().toArray();
        if (System.Length(keyArray)) > (0) then begin
            Self.logUtil.putF('Image Available', TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
            Self.setFrame(Int64(keyArray[(System.Length(keyArray)) - (1)]));
            if (Self.getFrame()) > (Self.lastFrame) then begin
                Self.logUtil.putF('Processing new frame: ' + TJava.ToString(Self.getFrame()), TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
                hashMap_ := Self.getGenericProfile().getGenericProfileActions().getHashMap();
                set_ := hashMap_.keySet();
                Self.logUtil.putF('Processing ' + IntToStr(set_.size()) + 'Actions', TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
                actionNameArray := set_.toArray();
                size := System.Length(actionNameArray);
                for index := 0 to size - 1 do begin
                    actionNameString := TJava.UnboxString(TJava.ToObject(actionNameArray[index]));
                    Self.logUtil.putF('Processing Action: ' + actionNameString, TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
                    genericProfileAction_ := TGenericProfileAction(TJava.ToObject(hashMap_.get(TJava.Box(actionNameString))));
                    genericProfileActionScript_ := genericProfileAction_.getGenericProfileActionScript();
                    vector := genericProfileActionScript_.getProfileActionConditionInterfaceVector();
                    TCaptureWorkerUtil.processProfileActionConditions(vector, Self.getFrame());
                end;
                Self.lastFrame := Self.getFrame();
            end;
        end else begin
            Self.logUtil.putF('Image Not Available', TJava.Box(Self), Self.PROCESS_DATA_WORKER_RESULTS);
        end;
end;
    

// throws Exception
procedure TGenericInputAutomationWorker.process;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.PROCESS);
        Self.startDataWorkers();
        Self.processDataWorkerResults();
end;
    

function TGenericInputAutomationWorker.getGenericProfile: TGenericProfile;
begin
        Exit(Self.genericProfile);
end;
    

procedure TGenericInputAutomationWorker.setGenericProfile(genericProfile_: TGenericProfile);
begin
        Self.genericProfile := genericProfile_;
end;
    

function TGenericInputAutomationWorker.getFrame: Int64;
begin
        Exit(Self.frame);
end;
    

procedure TGenericInputAutomationWorker.setFrame(frame: Int64);
begin
        Self.frame := frame;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

