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
unit DbWorkFlowFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, WorkFlowInterface;

type
  {AB:TYPES}
  TDbWorkFlowFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TDbWorkFlowFactory;
    procedure InitFields;
        class function getInstance: TDbWorkFlowFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; hashMap_: TJavaHashMap<TObject, TObject>): IWorkFlowInterface; overload; virtual;
  end;

implementation
uses
  WorkFlowWrapper, DynamicObjectData, AbeFactory, LicensingException, CommonStrings;


{AB:CODE}

procedure TDbWorkFlowFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TDbWorkFlowFactory.getInstance: TDbWorkFlowFactory;
begin
        Exit(TDbWorkFlowFactory.instance);
end;
    

constructor TDbWorkFlowFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception, LicensingException
function TDbWorkFlowFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; hashMap_: TJavaHashMap<TObject, TObject>): IWorkFlowInterface;
var
  className: string;
  params: TArray<TObject>;
  classes: TArray<TClass>;
  anyType: TObject;
  commonStrings_: TCommonStrings;
begin
        try
            className := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDynamicObjectData.NAME))));
            params := TJava.NewArray<TObject>(1);
            classes := TJava.NewArray<TClass>(1);
            classes[0] := TJava.ToObject(hashMap_).ClassType;
            params[0] := TJava.Box(hashMap_);
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

initialization
  {AB:INITIALIZATION}
  TDbWorkFlowFactory.instance := TDbWorkFlowFactory.Create();
  {AB:END}

end.

