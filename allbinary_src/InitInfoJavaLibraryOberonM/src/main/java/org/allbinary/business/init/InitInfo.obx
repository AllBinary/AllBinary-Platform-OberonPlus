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
// package org.allbinary.business.init
unit InitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath;

type
  {AB:TYPES}
  TInitInfo = class(TObject)
  public
    TESTING_: string;
    MAINPATH_: string;
    TESTHTMLPATH_: string;
    testing: string;
    mainPath: TAbPath;
    testHtmlPath: TAbPath;
    hasRead: Boolean;
    class var instance: TInitInfo;
    procedure InitFields;
        class function getInstance: TInitInfo; static;
        constructor Create;
        procedure set_; overload; virtual;
        procedure set_(hashMap_: TJavaHashMap<TObject, TObject>); overload; virtual;
        procedure get;
        procedure setHasRead(value: Boolean); virtual;
        procedure updateIfNeeded;
        function isTesting: Boolean; virtual;
        function getTesting: string; virtual;
        function getTestHtmlPath: string; virtual;
        function getMainPath: string; virtual;
        procedure setTesting(value: string); virtual;
        procedure setTestHtmlPath(value: TAbPath); virtual;
        procedure setMainPath(value: TAbPath); virtual;
        function isMainPathValid(abPath_: TAbPath): Boolean; virtual;
        function isTestHtmlPathValid(abPath_: TAbPath): Boolean; virtual;
        function isTestingValid(testing: string): Boolean; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  InitInfoEntity, StdUtil, PreLogUtil, LogConfigTypeFactory, LogConfigTypes, BooleanUtil, StringUtil;


{AB:CODE}

procedure TInitInfo.InitFields;
begin
  Self.TESTING_ := 'TESTING';
  Self.MAINPATH_ := 'MAINPATH';
  Self.TESTHTMLPATH_ := 'TESTHTMLPATH';
  Self.testing := nil;
  Self.mainPath := nil;
  Self.testHtmlPath := nil;
  Self.hasRead := False;
end;
    

class function TInitInfo.getInstance: TInitInfo;
begin
        Exit(TInitInfo.instance);
end;
    

constructor TInitInfo.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws InitException
procedure TInitInfo.set_;
var
  initInfoEntity_: TInitInfoEntity;
begin
    TJava.MonitorEnter(Self);
    try
        try
            initInfoEntity_ := TInitInfoEntity.Create();
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
                TPreLogUtil.put('created entity', TJava.Box('InitInfo'), 'set()');
            end;
            if not (initInfoEntity_.is_()) then begin
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
                    TPreLogUtil.put('adding', TJava.Box('InitInfo'), 'set()');
                end;
                initInfoEntity_.add();
            end else begin
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
                    TPreLogUtil.put('update', TJava.Box('InitInfo'), 'set()');
                end;
                initInfoEntity_.update();
            end;
            Self.hasRead := False;
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE('error', TJava.Box('InitInfo'), 'set()', TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TInitInfo.set_(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    TJava.MonitorEnter(Self);
    try
        try
            Self.testing := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.TESTING_))));
            Self.mainPath := TAbPath.Create(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.MAINPATH_)))), TStringUtil.getInstance().EMPTY_STRING);
            Self.testHtmlPath := TAbPath.Create(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.TESTHTMLPATH_)))), TStringUtil.getInstance().EMPTY_STRING);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE('error', TJava.Box('InitInfo'), 'set()', TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TInitInfo.get;
var
  initInfoEntity_: TInitInfoEntity;
begin
    TJava.MonitorEnter(Self);
    try
        try
            Self.testing := nil;
            Self.mainPath := nil;
            Self.testHtmlPath := nil;
            initInfoEntity_ := TInitInfoEntity.Create();
            initInfoEntity_.get();
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE('error', TJava.Box('InitInfo'), 'set()', TJava.Box(e));
            end;
            Exit;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TInitInfo.setHasRead(value: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.hasRead := value;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TInitInfo.updateIfNeeded;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if not (Self.hasRead) then begin
                Self.hasRead := True;
                Self.get();
            end;
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE('error', TJava.Box('InitInfo'), 'updateIfNeeded()', TJava.Box(e));
            end;
            Exit;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TInitInfo.isTesting: Boolean;
begin
        try
            Self.updateIfNeeded();
            Exit(TBooleanUtil.getInstance().getFromString(Self.testing));
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE('error', TJava.Box('InitInfo'), 'updateIfNeeded()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInitInfo.getTesting: string;
begin
        Self.updateIfNeeded();
        Exit(Self.testing);
end;
    

function TInitInfo.getTestHtmlPath: string;
begin
        Self.updateIfNeeded();
        if (Self.testHtmlPath) <> (nil) then begin
            Exit(Self.testHtmlPath.toString());
        end else begin
            Exit(nil);
        end;
end;
    

function TInitInfo.getMainPath: string;
begin
        Self.updateIfNeeded();
        if (Self.mainPath) <> (nil) then begin
            Exit(Self.mainPath.toString());
        end else begin
            Exit(nil);
        end;
end;
    

procedure TInitInfo.setTesting(value: string);
begin
        Self.testing := value;
end;
    

procedure TInitInfo.setTestHtmlPath(value: TAbPath);
begin
        Self.testHtmlPath := value;
end;
    

procedure TInitInfo.setMainPath(value: TAbPath);
begin
        Self.mainPath := value;
end;
    

function TInitInfo.isMainPathValid(abPath_: TAbPath): Boolean;
begin
        Exit(True);
end;
    

function TInitInfo.isTestHtmlPathValid(abPath_: TAbPath): Boolean;
begin
        Exit(True);
end;
    

// throws Exception
function TInitInfo.isTestingValid(testing: string): Boolean;
begin
        Exit(TBooleanUtil.getInstance().isStringBoolean(testing));
end;
    

function TInitInfo.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(Self.TESTING_), TJava.Box(Self.getTesting()));
        hashMap_.put(TJava.Box(Self.MAINPATH_), TJava.Box(Self.getMainPath()));
        hashMap_.put(TJava.Box(Self.TESTHTMLPATH_), TJava.Box(Self.getTestHtmlPath()));
        Exit(hashMap_);
end;

initialization
  {AB:INITIALIZATION}
  TInitInfo.instance := TInitInfo.Create();
  {AB:END}

end.

