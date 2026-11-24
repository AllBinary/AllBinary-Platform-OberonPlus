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
// package views.admin.workflow
unit NewView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, AbeClientInformationInterface, TransformInfoInterface, Document, Node, WorkFlowView;

type
  {AB:TYPES}
  TNewView = class(TWorkFlowView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  DynamicObjectData, NewWorkFlowFactory, StringMaker, ServiceClientInformationInterfaceFactory, TransformInfoHttpInterface;


{AB:CODE}

procedure TNewView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
end;

function TNewView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNewView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        Self.workFlowInterface := TNewWorkFlowFactory.getInstance().getInstance(Self.abeClientInformation, TJava.UnboxString(TJava.ToObject(httpTransformInfoInterface.getPropertiesHashMap().get(TDynamicObjectData.NAME))));
end;
    

function TNewView.isValid: Boolean;
begin
        try
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TNewView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Please Contact Administrator');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

function TNewView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TNewView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TNewView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

