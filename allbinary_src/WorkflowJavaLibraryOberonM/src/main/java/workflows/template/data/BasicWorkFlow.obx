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
// package workflows.template.data
unit BasicWorkFlow;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, WorkFlowInterface, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TBasicWorkFlow = class(TInterfacedObject, IWorkFlowInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abeClientInformation: IAbeClientInformationInterface;
    validationDomNodeInterface: IValidationComponentInterface;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function getName: string; virtual;
        function getPropertiesHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getPageContext: TPageContext; virtual;
        function process: Integer; virtual;
  end;

implementation
uses
  WorkFlowData, ServiceClientInformationInterfaceFactory, TransformFactory;


{AB:CODE}

procedure TBasicWorkFlow.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  
end;

function TBasicWorkFlow.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicWorkFlow.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().WORKFLOW) then begin
            Self.logUtil.putF('Properties: ' + propertiesHashMap.toString(), TJava.Box(Self), 'BasicWorkFlow()');
        end;
        Self.propertiesHashMap := propertiesHashMap;
        Self.pageContext := pageContext_;
        Self.validationDomNodeInterface := (TJava.ToObject(TTransformFactory.getInstance().getInstance(Self.abeClientInformation, propertiesHashMap, pageContext_)) as IValidationComponentInterface);
end;
    

// throws Exception
function TBasicWorkFlow.getName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.getPropertiesHashMap().get(TWorkFlowData.getInstance().NAME))));
end;
    

function TBasicWorkFlow.getPropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.propertiesHashMap);
end;
    

function TBasicWorkFlow.getPageContext: TPageContext;
begin
        Exit(Self.pageContext);
end;
    

// throws Exception
function TBasicWorkFlow.process: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().WORKFLOW) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.PROCESS);
        end;
        if (Self.validationDomNodeInterface.isValid()) then begin
            Self.pageContext.getOut().print(Self.validationDomNodeInterface.view());
            Exit(IntToStr(TTagSupport.EVAL_BODY_INCLUDE));
        end else begin
            Self.pageContext.getOut().print(Self.validationDomNodeInterface.validationInfo());
            Exit(IntToStr(TTagSupport.SKIP_BODY));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

