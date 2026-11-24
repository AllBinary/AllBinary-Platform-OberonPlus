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
unit StoreTagWorkFlowFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, StoreWorkFlowInterface;

type
  {AB:TYPES}
  TStoreTagWorkFlowFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TStoreTagWorkFlowFactory;
    procedure InitFields;
        class function getInstance: TStoreTagWorkFlowFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IStoreWorkFlowInterface; overload; virtual;
  end;

implementation
uses
  DynamicObjectData, StringMaker, AbeFactory, LicensingException, CommonStrings;


{AB:CODE}

procedure TStoreTagWorkFlowFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TStoreTagWorkFlowFactory.getInstance: TStoreTagWorkFlowFactory;
begin
        Exit(TStoreTagWorkFlowFactory.instance);
end;
    

constructor TStoreTagWorkFlowFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception, LicensingException
function TStoreTagWorkFlowFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): IStoreWorkFlowInterface;
var
  workFlowClassName: string;
  stringBuffer: TStringMaker;
  commonStrings_: TCommonStrings;
  params: TArray<TObject>;
  classes: TArray<TClass>;
begin
        try
            workFlowClassName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TDynamicObjectData.NAME))));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Creating WorkFlow: ');
                stringBuffer.append(workFlowClassName);
                stringBuffer.append('->');
                stringBuffer.append(TJava.ToObject(TStoreTagWorkFlowFactory.instance).ClassType.ClassName);
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
            end;
            params := TJava.NewArray<TObject>(2);
            classes := TJava.NewArray<TClass>(2);
            classes[0] := TJava.ToObject(propertiesHashMap).ClassType;
            classes[1] := TAbeFactory.getInstance().getClass(abeClientInformation, 'javax.servlet.jsp.PageContext');
            params[0] := TJava.Box(propertiesHashMap);
            params[1] := TJava.Box(pageContext_);
            Exit((TJava.ToObject(TAbeFactory.getInstance().getInstance(abeClientInformation, workFlowClassName, classes, params)) as IStoreWorkFlowInterface));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                workFlowClassName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TDynamicObjectData.NAME))));
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Creating WorkFlow: ');
                stringBuffer.append(workFlowClassName);
                stringBuffer.append('->');
                stringBuffer.append(TJava.ToObject(TStoreTagWorkFlowFactory.instance).ClassType.ClassName);
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR) then begin
                workFlowClassName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TDynamicObjectData.NAME))));
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Creating WorkFlow: ');
                stringBuffer.append(workFlowClassName);
                stringBuffer.append('->');
                stringBuffer.append(TJava.ToObject(TStoreTagWorkFlowFactory.instance).ClassType.ClassName);
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TStoreTagWorkFlowFactory.instance := TStoreTagWorkFlowFactory.Create();
  {AB:END}

end.

