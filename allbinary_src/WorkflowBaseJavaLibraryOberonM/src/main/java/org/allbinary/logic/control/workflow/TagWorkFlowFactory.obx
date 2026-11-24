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
unit TagWorkFlowFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, WorkFlowInterface;

type
  {AB:TYPES}
  TTagWorkFlowFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTagWorkFlowFactory;
    procedure InitFields;
        class function getInstance: TTagWorkFlowFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IWorkFlowInterface; overload; virtual;
  end;

implementation
uses
  DynamicObjectData, StringMaker, AbeFactory, LicensingException, CommonStrings;


{AB:CODE}

procedure TTagWorkFlowFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTagWorkFlowFactory.getInstance: TTagWorkFlowFactory;
begin
        Exit(TTagWorkFlowFactory.instance);
end;
    

constructor TTagWorkFlowFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception, LicensingException
function TTagWorkFlowFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IWorkFlowInterface;
var
  workFlowClassName: string;
  params: TArray<TObject>;
  classes: TArray<TClass>;
  stringBuffer: TStringMaker;
  commonStrings_: TCommonStrings;
begin
        try
            workFlowClassName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TDynamicObjectData.NAME))));
            params := TJava.NewArray<TObject>(2);
            classes := TJava.NewArray<TClass>(2);
            classes[0] := TJava.ToObject(propertiesHashMap).ClassType;
            classes[1] := TAbeFactory.getInstance().getClass(abeClientInformation, 'javax.servlet.jsp.PageContext');
            params[0] := TJava.Box(propertiesHashMap);
            params[1] := TJava.Box(pageContext_);
            Exit((TJava.ToObject(TAbeFactory.getInstance().getInstance(abeClientInformation, workFlowClassName, classes, params)) as IWorkFlowInterface));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                workFlowClassName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TDynamicObjectData.NAME))));
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Failed To Get Instance: ');
                stringBuffer.append(workFlowClassName);
                stringBuffer.append('->');
                stringBuffer.append(TJava.ToObject(TTagWorkFlowFactory.instance).ClassType.ClassName);
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                workFlowClassName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TDynamicObjectData.NAME))));
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Failed To Get Instance: ');
                stringBuffer.append(workFlowClassName);
                stringBuffer.append('->');
                stringBuffer.append(TJava.ToObject(TTagWorkFlowFactory.instance).ClassType.ClassName);
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTagWorkFlowFactory.instance := TTagWorkFlowFactory.Create();
  {AB:END}

end.

