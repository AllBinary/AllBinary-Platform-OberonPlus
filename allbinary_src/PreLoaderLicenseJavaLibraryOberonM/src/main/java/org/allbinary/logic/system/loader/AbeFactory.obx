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
unit AbeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface;

type
  {AB:TYPES}
  TAbeFactory = class(TObject)
  public
    logUtil: TLogUtil;
    useCustomLoader: Boolean;
    class var instance: TAbeFactory;
    procedure InitFields;
        class function getInstance: TAbeFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; className: string): TObject; overload; virtual;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; className: string; classes: TArray<TClass>; params: TArray<TObject>): TObject; overload; virtual;
        function getClass(abeClientInformation: IAbeClientInformationInterface; className: string): TClass; virtual;
  end;

implementation
uses
  WebappClassLoaderInfo, AbeClassLoader, ConstructorUtil, StringMaker, AbKeys, LicensingException, CommonSeps;


{AB:CODE}

procedure TAbeFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.useCustomLoader := False;
end;
    

class function TAbeFactory.getInstance: TAbeFactory;
begin
        Exit(TAbeFactory.instance);
end;
    

constructor TAbeFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws LicensingException
function TAbeFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; className: string): TObject;
begin
    TJava.MonitorEnter(Self);
    try
        try
            Exit(TJava.Box(Self.getClass(abeClientInformation, className).newInstance()));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.put('Failure for: ' + className, TJava.Box(Self), 'getInstance(classname)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.put('Failure for: ' + className, TJava.Box(Self), 'getInstance(classname)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws LicensingException
function TAbeFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; className: string; classes: TArray<TClass>; params: TArray<TObject>): TObject;
var
  constructor_: TConstructor;
  parent: TClassLoader;
  myClass: TClass;
  loader: TClassLoader;
  stringBuffer: TStringMaker;
begin
    TJava.MonitorEnter(Self);
    try
        constructor_ := nil;
        try
            parent := TWebappClassLoaderInfo.getLoader();
            if Self.useCustomLoader then begin
                loader := TAbeClassLoader.Create(parent, TAbKeys.getInstance().getKey(abeClientInformation, className));
                myClass := loader.loadClass(className);
                constructor_ := myClass.getConstructor(classes);
                Exit(TJava.Box(constructor_.newInstance(params)));
            end else begin
                myClass := parent.loadClass(className);
                constructor_ := myClass.getConstructor(classes);
                Exit(TJava.Box(constructor_.newInstance(params)));
            end;
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Failure for: ');
                stringBuffer.append(className);
                stringBuffer.append(TCommonSeps.getInstance().SPACE);
                stringBuffer.append(TConstructorUtil.view(constructor_, TCommonSeps.getInstance().NEW_LINE));
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), 'getInstance(className,params)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Failure for: ');
                stringBuffer.append(className);
                stringBuffer.append(TCommonSeps.getInstance().SPACE);
                stringBuffer.append(TConstructorUtil.view(constructor_, TCommonSeps.getInstance().NEW_LINE));
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), 'getInstance(className,params)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws LicensingException
function TAbeFactory.getClass(abeClientInformation: IAbeClientInformationInterface; className: string): TClass;
var
  parent: TClassLoader;
  c: TClass;
  loader: TClassLoader;
begin
    TJava.MonitorEnter(Self);
    try
        try
            parent := TWebappClassLoaderInfo.getLoader();
            if Self.useCustomLoader then begin
                loader := TAbeClassLoader.Create(parent, TAbKeys.getInstance().getKey(abeClientInformation, className));
                c := loader.loadClass(className);
                Exit(c);
            end else begin
                c := parent.loadClass(className);
                Exit(c);
            end;
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.put('Failure for: ' + className, TJava.Box(Self), 'getClass(className)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LOADERERROR) then begin
                Self.logUtil.put('Failure for: ' + className, TJava.Box(Self), 'getClass(className)', TJava.Box(e));
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
  TAbeFactory.instance := TAbeFactory.Create();
  {AB:END}

end.

