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
// package org.allbinary.input.automation.robot
unit InputRobotFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, ABHashtable, InputRobotInterface;

type
  {AB:TYPES}
  TInputRobotFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    hashtable: TABHashtable<TObject, TObject>;
    helpSetListenerInterface: THelpSetListener;
    class var inputRobotFactory: TInputRobotFactory;
    procedure InitFields;
        class function getInstance: TInputRobotFactory; static;
        constructor Create;
        procedure addListener(helpSetListenerInterface: THelpSetListener); virtual;
        procedure add(inputRobotInterface_: IInputRobotInterface); virtual;
        procedure loadLibraries; overload; virtual;
        class procedure loadLibraries(collection: ICollection); overload; static;
        class procedure loadLibrary(inputRobotInterface_: IInputRobotInterface); static;
        procedure unloadLibraries; virtual;
        function get: TABHashtable<TObject, TObject>; overload; virtual;
        function get(name: string): IInputRobotInterface; overload; virtual;
  end;

implementation
uses
  InputRobot, StdUtil, JavaHelpSetNotifier, InterfaceUtil, SecuredNativeLibraryInterface;


{AB:CODE}

procedure TInputRobotFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  
end;
    

// throws Exception
class function TInputRobotFactory.getInstance: TInputRobotFactory;
begin
        Exit(TInputRobotFactory.inputRobotFactory);
end;
    

constructor TInputRobotFactory.Create;
var
  graphenv: TGraphicsEnvironment;
  screens: TArray<TGraphicsDevice>;
  inputRobotInterface_: IInputRobotInterface;
  i: Integer;
begin
    inherited Create;
    InitFields;
        try
            graphenv := TGraphicsEnvironment.getLocalGraphicsEnvironment();
            screens := graphenv.getScreenDevices();
            
            for i := 0 to System.Length(screens) - 1 do begin
                inputRobotInterface_ := (TJava.ToObject(TInputRobot.Create(screens[i])) as IInputRobotInterface);
                Self.logUtil.putF('Adding Robot: ' + inputRobotInterface_.getName(), TJava.Box(Self), 'getRobots');
                Self.get().put(inputRobotInterface_.getName(), TJava.ToObject(inputRobotInterface_));
            end;
            Self.logUtil.putF('Number Of Robots: ' + IntToStr(Self.hashtable.size()), TJava.Box(Self), 'getRobots');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            end;
        end;
end;
    

procedure TInputRobotFactory.addListener(helpSetListenerInterface: THelpSetListener);
begin
        Self.helpSetListenerInterface := helpSetListenerInterface;
end;
    

// throws Exception
procedure TInputRobotFactory.add(inputRobotInterface_: IInputRobotInterface);
var
  helpSet_: THelpSet;
  helpSetEvent_: THelpSetEvent;
begin
        Self.logUtil.putF('Adding InputRobotInterface: ' + inputRobotInterface_.getName(), TJava.Box(Self), 'add');
        Self.get().put(inputRobotInterface_.getName(), TJava.ToObject(inputRobotInterface_));
        helpSet_ := inputRobotInterface_.getHelpSet();
        if (Self.helpSetListenerInterface) <> (nil) then begin
            if (helpSet_) <> (nil) then begin
                if not (TJavaHelpSetNotifier.isNotified(helpSet_)) then begin
                    helpSetEvent_ := THelpSetEvent.Create(Self, helpSet_, THelpSetEvent.HELPSET_ADDED);
                    Self.helpSetListenerInterface.helpSetAdded(helpSetEvent_);
                end;
            end else begin
                Self.logUtil.putF('Null HelpSet For: ' + inputRobotInterface_.getName(), TJava.Box(Self), 'add');
            end;
        end else begin
            Self.logUtil.putF('No HelpSet Listener', TJava.Box(Self), 'add');
        end;
end;
    

// throws Exception
procedure TInputRobotFactory.loadLibraries;
var
  set_: ISet;
  nameArray: TArray<TObject>;
  size: Integer;
  inputRobotInterface_: IInputRobotInterface;
  index: Integer;
begin
        set_ := Self.get().keySet();
        Self.logUtil.putF('Loading Libraries', TJava.Box(Self), 'loadLibraries');
        nameArray := set_.toArray();
        size := System.Length(nameArray);
        for index := 0 to size - 1 do begin
            inputRobotInterface_ := TInputRobotFactory.getInstance().get(TJava.UnboxString(TJava.ToObject(nameArray[index])));
            TInputRobotFactory.loadLibrary(inputRobotInterface_);
        end;
end;
    

// throws Exception
class procedure TInputRobotFactory.loadLibraries(collection: ICollection);
var
  logUtil_: TLogUtil;
  iterator: IIterator;
begin
        logUtil_ := TLogUtil.getInstance();
        logUtil_.putFS('Loading Libraries', 'InputRobotFactory', 'loadLibraries');
        iterator := collection.iterator();
        while iterator.hasNext() do begin
            TInputRobotFactory.loadLibrary((TJava.ToObject(iterator.next()) as IInputRobotInterface));
        end;
end;
    

// throws Exception
class procedure TInputRobotFactory.loadLibrary(inputRobotInterface_: IInputRobotInterface);
var
  logUtil_: TLogUtil;
  securedNativeLibraryInterface_: ISecuredNativeLibraryInterface;
begin
        logUtil_ := TLogUtil.getInstance();
        if TInterfaceUtil.isImplemented(ISecuredNativeLibraryInterface, inputRobotInterface_) then begin
            logUtil_.putFS('Loading Library: ' + inputRobotInterface_.getName(), 'InputRobotFactory', 'loadLibraries');
            securedNativeLibraryInterface_ := (TJava.ToObject(inputRobotInterface_) as ISecuredNativeLibraryInterface);
            securedNativeLibraryInterface_.load();
        end;
end;
    

// throws Exception
procedure TInputRobotFactory.unloadLibraries;
var
  set_: ISet;
  inputRobotInterface_: IInputRobotInterface;
  inputRobotArray: TArray<TObject>;
  size: Integer;
  securedNativeLibraryInterface_: ISecuredNativeLibraryInterface;
  index: Integer;
begin
        Self.logUtil.putF('Unloading Libraries', TJava.Box(Self), 'unloadLibraries');
        set_ := Self.get().keySet();
        
        inputRobotArray := set_.toArray();
        size := System.Length(inputRobotArray);
        for index := 0 to size - 1 do begin
            inputRobotInterface_ := Self.get(TJava.UnboxString(TJava.ToObject(inputRobotArray[index])));
            if TInterfaceUtil.isImplemented(ISecuredNativeLibraryInterface, inputRobotInterface_) then begin
                Self.logUtil.putF('Unloading Library: ' + inputRobotInterface_.getName(), TJava.Box(Self), 'unloadLibraries');
                securedNativeLibraryInterface_ := (TJava.ToObject(inputRobotInterface_) as ISecuredNativeLibraryInterface);
                securedNativeLibraryInterface_.unload();
            end;
        end;
end;
    

// throws Exception
function TInputRobotFactory.get: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;
    

function TInputRobotFactory.get(name: string): IInputRobotInterface;
begin
        Self.logUtil.putF('Getting Robot: ' + name, TJava.Box(Self), 'getRobots');
        Exit((TJava.ToObject(Self.hashtable.get(TJava.Box(name))) as IInputRobotInterface));
end;

initialization
  {AB:INITIALIZATION}
  TInputRobotFactory.inputRobotFactory := TInputRobotFactory.Create();
  {AB:END}

end.

