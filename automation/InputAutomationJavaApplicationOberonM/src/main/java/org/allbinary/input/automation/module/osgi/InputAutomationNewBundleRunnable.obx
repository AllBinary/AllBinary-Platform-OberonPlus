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
// package org.allbinary.input.automation.module.osgi
unit InputAutomationNewBundleRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bundle, InputAutomationBundleActivator, LogUtil, CommonStrings, RunnableInterface, BasicArrayList;

type
  {AB:TYPES}
  TInputAutomationNewBundleRunnable = class(TInterfacedObject, IRunnableInterface, IRunnable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    inputAutomationBundleActivator: TInputAutomationBundleActivator;
    running: Boolean;
    fileBasicArrayList: TBasicArrayList;
    class var FILE_: string;
    class var JAR_DIR_PROP: string;
    class var INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH: string;
    class var MODULES_START_LEVEL: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(inputAutomationBundleActivator_: TInputAutomationBundleActivator);
        procedure setThread(thread: TThread); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure updateModules;
        function getAllJarSymbolicNameHashMap: TJavaHashMap<TObject, TObject>;
        function getJarModuleFileBasicArrayList: TBasicArrayList;
        function getInstalledJarSymbolicNameBasicArrayList: TBasicArrayList;
        function isInstalled(symbolicName: string): Boolean;
        function findNewModules: TBasicArrayList;
        function install(url_: TURL): TBundle;
        procedure run; virtual;
  end;

implementation
uses
  BundleContext, Constants, StdUtil, FileWrapperUtil, SubDirectory, BasicFileFilterUtil, CommonLabels, TimeDelayHelper, BasicArrayListD;


{AB:CODE}

procedure TInputAutomationNewBundleRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TInputAutomationNewBundleRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationNewBundleRunnable.Create(inputAutomationBundleActivator_: TInputAutomationBundleActivator);
begin
    inherited Create;
    InitFields;
        Self.inputAutomationBundleActivator := inputAutomationBundleActivator_;
        Self.fileBasicArrayList := TBasicArrayListD.Create();
end;
    

// throws Exception
procedure TInputAutomationNewBundleRunnable.setThread(thread: TThread);
begin
end;
    

function TInputAutomationNewBundleRunnable.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TInputAutomationNewBundleRunnable.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TInputAutomationNewBundleRunnable.updateModules;
var
  list: TBasicArrayList;
  size: Integer;
  bundle_: TBundle;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'updateModules');
        list := Self.findNewModules();
        size := list.size();
        
        for index := 0 to size - 1 do begin
            bundle_ := Self.install(TURL(TJava.ToObject(list.get(index))));
            if (bundle_) <> (nil) then begin
                bundle_.start(TInputAutomationNewBundleRunnable.MODULES_START_LEVEL);
            end;
        end;
end;
    

// throws Exception
function TInputAutomationNewBundleRunnable.getAllJarSymbolicNameHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  jarFileBasicArrayList: TBasicArrayList;
  size: Integer;
  file_: TFile;
  fileInputStream_: TFileInputStream;
  jarInputStream_: TJarInputStream;
  manifest_: TManifest;
  symbolicName: string;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getAllJarSymbolicNameHashMap');
        hashMap_ := TStdUtil.getInstance().createHashMap();
        jarFileBasicArrayList := Self.getJarModuleFileBasicArrayList();
        Self.logUtil.putF('Jar Module Files: ' + TJava.ToString(jarFileBasicArrayList), TJava.Box(Self), 'getAllJarSymbolicNameHashMap');
        size := jarFileBasicArrayList.size();
        
        for index := 0 to size - 1 do begin
            file_ := TFile(TJava.ToObject(jarFileBasicArrayList.get(index)));
            if not (file_.isDirectory()) then begin
                fileInputStream_ := TFileInputStream.Create(file_);
                jarInputStream_ := TJarInputStream.Create(fileInputStream_);
                manifest_ := jarInputStream_.getManifest();
                if (manifest_) = (nil) then begin
                end else begin
                    symbolicName := manifest_.getMainAttributes().getValue(TConstants.BUNDLE_SYMBOLICNAME);
                    if (symbolicName) <> ('') then begin
                        hashMap_.put(TJava.Box(symbolicName), TJava.Box(TURL.Create((TInputAutomationNewBundleRunnable.FILE_) + (file_.getAbsolutePath()))));
                    end;
                end;
            end;
        end;
        Exit(hashMap_);
end;
    

function TInputAutomationNewBundleRunnable.getJarModuleFileBasicArrayList: TBasicArrayList;
var
  baseJarPath: string;
  jarFileFilter: IFileFilter;
  path: string;
  file_: TFile;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getJarModuleFileBasicArrayList');
        baseJarPath := TJava.GetProperty(TInputAutomationNewBundleRunnable.JAR_DIR_PROP);
        if baseJarPath.StartsWith(TInputAutomationNewBundleRunnable.FILE_) then begin
            baseJarPath := Copy(baseJarPath, (System.Length(TInputAutomationNewBundleRunnable.FILE_)) + 1, MaxInt);
        end;
        jarFileFilter := TBasicFileFilterUtil.getInstance('.jar');
        path := baseJarPath + TJava.ToString(TInputAutomationNewBundleRunnable.INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH);
        Self.logUtil.putF('Path: ' + path, TJava.Box(Self), 'getJarModuleFileBasicArrayList');
        file_ := TFile.Create(path);
        Self.logUtil.putF('File: ' + TJava.ToString(file_.getAbsolutePath()) + ' isDirectory: ' + TJava.ToString(file_.isDirectory()), TJava.Box(Self), 'getJarModuleFileBasicArrayList');
        Exit(TSubDirectory.getInstance().search(jarFileFilter, TFileWrapperUtil.wrapFile(file_)));
end;
    

// throws Exception
function TInputAutomationNewBundleRunnable.getInstalledJarSymbolicNameBasicArrayList: TBasicArrayList;
var
  vector: TBasicArrayList;
  bundleContext_: TBundleContext;
  bundleArray: TArray<TBundle>;
  bundle_: TBundle;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getInstalledJarSymbolicNameBasicArrayList');
        vector := TBasicArrayListD.Create();
        bundleContext_ := TInputAutomationBundleActivator.getBundleContext();
        bundleArray := bundleContext_.getBundles();
        if (bundleArray) <> (nil) then begin
            Self.logUtil.putF('bundleArray: ' + IntToStr(System.Length(bundleArray)), TJava.Box(Self), 'getInputAutomationModuleServices');
            for index := 0 to System.Length(bundleArray) - 1 do begin
                bundle_ := bundleArray[index];
                vector.add(TJava.Box(bundle_.getSymbolicName()));
            end;
        end;
        Exit(vector);
end;
    

// throws Exception
function TInputAutomationNewBundleRunnable.isInstalled(symbolicName: string): Boolean;
var
  list: TBasicArrayList;
  size: Integer;
  nextSymbolicName: string;
  index: Integer;
begin
        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START) + symbolicName, TJava.Box(Self), 'isInstalled');
        list := Self.getInstalledJarSymbolicNameBasicArrayList();
        size := list.size();
        
        for index := 0 to size - 1 do begin
            nextSymbolicName := TJava.UnboxString(TJava.ToObject(list.get(index)));
            if (CompareStr(nextSymbolicName, symbolicName)) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
function TInputAutomationNewBundleRunnable.findNewModules: TBasicArrayList;
var
  vector: TBasicArrayList;
  hashMap_: TJavaHashMap<TObject, TObject>;
  set_: ISet;
  symbolicNameArray: TArray<TObject>;
  size: Integer;
  symbolicName: string;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'findNewModules');
        vector := TBasicArrayListD.Create();
        hashMap_ := Self.getAllJarSymbolicNameHashMap();
        Self.logUtil.putF('All: ' + TJava.ToString(hashMap_), TJava.Box(Self), 'findNewModules');
        set_ := hashMap_.keySet();
        symbolicNameArray := set_.toArray();
        size := System.Length(symbolicNameArray);
        for index := 0 to size - 1 do begin
            symbolicName := TJava.UnboxString(TJava.ToObject(symbolicNameArray[index]));
            if not (Self.isInstalled(symbolicName)) then begin
                vector.add(TJava.Box(hashMap_.get(TJava.Box(symbolicName))));
            end;
        end;
        Exit(vector);
end;
    

// throws Exception
function TInputAutomationNewBundleRunnable.install(url_: TURL): TBundle;
var
  bundleContext_: TBundleContext;
begin
        Self.logUtil.putF((TCommonLabels.getInstance().START) + (url_), TJava.Box(Self), 'install');
        bundleContext_ := TInputAutomationBundleActivator.getBundleContext();
        Exit(bundleContext_.installBundle(url_.toString()));
end;
    

procedure TInputAutomationNewBundleRunnable.run;
var
  timeHelper: TTimeDelayHelper;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            while Self.isRunning() do begin
                timeHelper.setStartTimeTNT();
                Self.logUtil.putF((TCommonLabels.getInstance().ELAPSED) + (timeHelper.getElapsedTNT()), TJava.Box(Self), Self.commonStrings.RUN);
                Self.updateModules();
                Break;
            end;
            Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), Self.commonStrings.RUN);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInputAutomationNewBundleRunnable.FILE_ := 'file:';
  TInputAutomationNewBundleRunnable.JAR_DIR_PROP := 'org.knopflerfish.gosg.jars';
  TInputAutomationNewBundleRunnable.INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH := 'ia/auto';
  TInputAutomationNewBundleRunnable.MODULES_START_LEVEL := 8;
  {AB:END}

end.

