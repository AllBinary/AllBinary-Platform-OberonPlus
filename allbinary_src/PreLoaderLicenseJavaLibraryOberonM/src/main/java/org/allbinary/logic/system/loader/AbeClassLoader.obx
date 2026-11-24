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
// package org.allbinary.logic.system.loader
unit AbeClassLoader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbCryptUtil;

type
  {AB:TYPES}
  TAbeClassLoader = class(TClassLoader)
  public
    logUtil: TLogUtil;
    abCryptUtil: TAbCryptUtil;
    LOAD_CLASS: string;
    ENCRYPTED_EXTENSION: string;
    key: string;
    class var classes: IMap;
    class var PATH: string;
    procedure InitFields;
        constructor Create(parent: TClassLoader; key: string);
        function findLoadedClass1(name: string): TClass; virtual;
        function loadClass(name: string): TClass; overload; virtual;
        function loadClass(name: string; resolve: Boolean): TClass; overload; virtual;
        function loadClassBytesFromFile(name: string): TArray<ShortInt>;
        function oldLoadClass(name: string; resolve: Boolean): TClass; virtual;
  end;

implementation
uses
  NoClassDefFoundError, StdUtil, LogBuffer, LogFactory, StreamUtil, AbPathData, StringUtil;


{AB:CODE}

procedure TAbeClassLoader.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abCryptUtil := TAbCryptUtil.getInstance();
  Self.LOAD_CLASS := 'loadClass';
  Self.ENCRYPTED_EXTENSION := TJava.ToString(TAbPathData.getInstance().EXTENSION_SEP) + 'abc';
  
end;
    

constructor TAbeClassLoader.Create(parent: TClassLoader; key: string);
begin
        inherited Create(parent);
        InitFields;
        Self.key := key;
        TAbeClassLoader.PATH := TJava.ToString(Torg.allbinary.globals.URLGLOBALS.getWebappPath()) + 'WEB-INF/classes/';
end;
    

function TAbeClassLoader.findLoadedClass1(name: string): TClass;
begin
        Exit(TClass(TJava.ToObject(TAbeClassLoader.classes.get(TJava.Box(name)))));
end;
    

// throws ClassNotFoundException
function TAbeClassLoader.loadClass(name: string): TClass;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.loadClass(name, False));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws ClassNotFoundException
function TAbeClassLoader.loadClass(name: string; resolve: Boolean): TClass;
var
  loadedWith: string;
  logBuffer_: TLogBuffer;
  myClass: TClass;
  normalClass: TClass;
  classBytes: TArray<ShortInt>;
begin
    TJava.MonitorEnter(Self);
    try
        loadedWith := 'findLoadedClass1';
        logBuffer_ := TLogBuffer.Create();
        try
            myClass := Self.findLoadedClass1(name);
            if (myClass) = (nil) then begin
                try
                    loadedWith := 'super.loadClass';
                    normalClass := inherited loadClass(name, resolve);
                    if (normalClass) <> (nil) then begin
                        Exit(normalClass);
                    end;
                except
                    on e: TClassNotFoundException do begin
                    logBuffer_.add(TLogFactory.getInstance('Failed to Load Class: ' + name + ''#10'with: ' + loadedWith, Self, Self.LOAD_CLASS, e));
                    end;
                    on e: SysUtils.Exception do begin
                    logBuffer_.add(TLogFactory.getInstance('Failed to Load Class: ' + name + ''#10'with: ' + loadedWith, Self, Self.LOAD_CLASS, e));
                    end;
                    on e: TNoClassDefFoundError do begin
                    logBuffer_.add(TLogFactory.getInstanceF('NoClassDefFoundError Failed Loaded Class: ' + name + ''#10'with: ' + loadedWith, TJava.Box(Self), Self.LOAD_CLASS));
                    end;
                end;
                classBytes := Self.loadClassBytesFromFile(name);
                if (classBytes) = (nil) then begin
                    raise TClassNotFoundException.Create('My Bytes not loaded for: ' + name + ''#10'with: ' + 'loadClassBytes');
                end;
                myClass := Self.defineClass(name, classBytes, 0, System.Length(classBytes));
                if (myClass) = (nil) then begin
                    raise TClassNotFoundException.Create('My Class Not Defineable for: ' + name + ''#10'with: ' + 'loadClassBytes');
                end;
                TAbeClassLoader.classes.put(TJava.Box(name), TJava.Box(myClass));
            end else begin
                logBuffer_.add(TLogFactory.getInstanceF('Already Loaded: ' + name + ''#10'with: ' + loadedWith, TJava.Box(Self), Self.LOAD_CLASS));
            end;
            Self.resolveClass(myClass);
            Exit(myClass);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                logBuffer_.logAll();
                Self.logUtil.put('Failure loading: ' + name + ''#10'with: ' + loadedWith, TJava.Box(Self), Self.LOAD_CLASS, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbeClassLoader.loadClassBytesFromFile(name: string): TArray<ShortInt>;
var
  in_: TFileInputStream;
  cname: string;
  decrypted: TArray<ShortInt>;
  loadedWith: string;
begin
        in_ := nil;
        cname := TStringUtil.getInstance().EMPTY_STRING;
        try
            cname := TJava.ToString(TAbeClassLoader.PATH) + StringReplace(name, '.', TAbPathData.getInstance().SEPARATORCHAR, [rfReplaceAll]) + Self.ENCRYPTED_EXTENSION;
            in_ := TFileInputStream.Create(cname);
            decrypted := Self.abCryptUtil.decrypt(in_, Self.key);
            Exit(decrypted);
        except
            on e: TIOException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.put('(Before LogBuffer Output) Failure loading Encrypted: ' + name + ' File: ' + cname, TJava.Box('AbeClassLoader'), 'loadClassBytes', TJava.Box(e));
            end;
            TStreamUtil.getInstance().close(in_);
            end;
            on e: SysUtils.Exception do begin
            loadedWith := 'loadClassBytes';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.put('(Before LogBuffer Output) Failed to Loaded Class: ' + name + ' File: ' + cname + ''#10'with: ' + loadedWith, TJava.Box(Self), 'loadClassBytes', TJava.Box(e));
            end;
            end;
            on e: TNoClassDefFoundError do begin
            loadedWith := 'loadClassBytes';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.putF('(Before LogBuffer Output) NoClassDefFoundError Failed Loaded Class: ' + name + ' File: ' + cname + ''#10'with: ' + loadedWith, TJava.Box(Self), 'loadClassBytes');
            end;
            end;
        end;
        Exit(nil);
end;
    

// throws ClassNotFoundException
function TAbeClassLoader.oldLoadClass(name: string; resolve: Boolean): TClass;
var
  loadedWith: string;
  myClass: TClass;
  normalClass: TClass;
  classBytes: TArray<ShortInt>;
begin
    TJava.MonitorEnter(Self);
    try
        loadedWith := 'findLoadedClass1';
        try
            myClass := Self.findLoadedClass1(name);
            if (myClass) = (nil) then begin
                try
                    loadedWith := 'super.loadClass';
                    normalClass := inherited loadClass(name, resolve);
                    if (normalClass) <> (nil) then begin
                        Exit(normalClass);
                    end;
                except
                    on e: TClassNotFoundException do begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADER) then begin
                        Self.logUtil.putF('Failed Loaded Class: ' + name + ' with: ' + loadedWith, TJava.Box(Self), Self.LOAD_CLASS);
                    end;
                    end;
                    on e: SysUtils.Exception do begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADER) then begin
                        Self.logUtil.putF('Failed Loaded Class: ' + name + ' with: ' + loadedWith, TJava.Box(Self), Self.LOAD_CLASS);
                    end;
                    end;
                    on e: TNoClassDefFoundError do begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADER) then begin
                        Self.logUtil.putF('Failed Loaded Class: ' + name + ' with: ' + loadedWith, TJava.Box(Self), Self.LOAD_CLASS);
                    end;
                    end;
                end;
                loadedWith := 'loadClassBytes';
                classBytes := Self.loadClassBytesFromFile(name);
                if (classBytes) = (nil) then begin
                    raise TClassNotFoundException.Create('Bytes not loaded for: ' + name);
                end;
                myClass := Self.defineClass(name, classBytes, 0, System.Length(classBytes));
                if (myClass) = (nil) then begin
                    raise TClassNotFoundException.Create('Class Not Defineable for: ' + name);
                end;
                TAbeClassLoader.classes.put(TJava.Box(name), TJava.Box(myClass));
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADER) then begin
                    Self.logUtil.putF('Already Loaded: ' + name + ' with: ' + loadedWith, TJava.Box(Self), Self.LOAD_CLASS);
                end;
            end;
            Self.resolveClass(myClass);
            Exit(myClass);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.put('Failure loading: ' + name, TJava.Box('AbeClassLoader'), Self.LOAD_CLASS, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TAbeClassLoader.classes := TStdUtil.getInstance().createHashMap();
  
  {AB:END}

end.

