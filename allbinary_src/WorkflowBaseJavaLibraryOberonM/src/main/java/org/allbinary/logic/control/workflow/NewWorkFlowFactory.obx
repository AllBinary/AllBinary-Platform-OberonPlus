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
// package org.allbinary.logic.control.workflow
unit NewWorkFlowFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, WorkFlowInterface;

type
  {AB:TYPES}
  TNewWorkFlowFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TNewWorkFlowFactory;
    procedure InitFields;
        class function getInstance: TNewWorkFlowFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IWorkFlowInterface; overload; virtual;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; className: string): IWorkFlowInterface; overload; virtual;
  end;

implementation
uses
  WorkFlowWrapper, DynamicObjectData, StringUtil, AbeFactory, LicensingException, CommonStrings;


{AB:CODE}

procedure TNewWorkFlowFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TNewWorkFlowFactory.getInstance: TNewWorkFlowFactory;
begin
        Exit(TNewWorkFlowFactory.instance);
end;
    

constructor TNewWorkFlowFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception, LicensingException
function TNewWorkFlowFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IWorkFlowInterface;
var
  className: string;
  params: TArray<TObject>;
  classes: TArray<TClass>;
  anyType: TObject;
  commonStrings_: TCommonStrings;
begin
        try
            className := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDynamicObjectData.NAME))));
            params := TJava.NewArray<TObject>(2);
            classes := TJava.NewArray<TClass>(2);
            classes[0] := TJava.ToObject(hashMap_).ClassType;
            classes[1] := TAbeFactory.getInstance().getClass(abeClientInformation, 'javax.servlet.jsp.PageContext');
            params[0] := TJava.Box(hashMap_);
            params[1] := TJava.Box(pageContext_);
            anyType := TJava.Box(TAbeFactory.getInstance().getInstance(abeClientInformation, className, classes, params));
            Exit((TJava.ToObject(TWorkFlowWrapper.Create(anyType)) as IWorkFlowInterface));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getInstance(HashMap)', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getInstance(HashMap)', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception, LicensingException
function TNewWorkFlowFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; className: string): IWorkFlowInterface;
var
  stringUtil_: TStringUtil;
  anyType: TObject;
  commonStrings_: TCommonStrings;
begin
        try
            stringUtil_ := TStringUtil.getInstance();
            if ((className) <> ('')) and ((CompareStr(className, stringUtil_.EMPTY_STRING)) <> (0)) then begin
                anyType := TJava.Box(TAbeFactory.getInstance().getInstance(abeClientInformation, className, nil, nil));
                Exit((TJava.ToObject(TWorkFlowWrapper.Create(anyType)) as IWorkFlowInterface));
            end else begin
                raise SysUtils.Exception.Create('No WorkFlow ClassName');
            end;
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TNewWorkFlowFactory.instance := TNewWorkFlowFactory.Create();
  {AB:END}

end.

