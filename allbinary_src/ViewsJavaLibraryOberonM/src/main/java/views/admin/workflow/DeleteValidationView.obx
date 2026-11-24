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
unit DeleteValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, WorkFlowView;

type
  {AB:TYPES}
  TDeleteValidationView = class(TWorkFlowView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    workFlowName: string;
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
  WorkFlowEntityFactory, WorkFlowData, StringMaker;


{AB:CODE}

procedure TDeleteValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TDeleteValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDeleteValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.workFlowName := Self.getPageContext().getRequest().getParameter(TWorkFlowData.getInstance().NAME);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Name: ' + Self.workFlowName, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

function TDeleteValidationView.isValid: Boolean;
begin
        try
            if (Self.workFlowName) = ('') then begin
                Exit(False);
            end;
            if TJava.IsNull(TWorkFlowEntityFactory.getInstance().create2().get(Self.workFlowName, Self.getWeblisketSession().getStoreName())) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('WorkFlow does not exist.', TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TDeleteValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if (Self.workFlowName) = ('') then begin
                stringBuffer.append('WorkFlow name is invalid<br />');
            end;
            if TJava.IsNull(TWorkFlowEntityFactory.getInstance().create2().get(Self.workFlowName, Self.getWeblisketSession().getStoreName())) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('WorkFlow does not exist.', TJava.Box(Self), 'validationInfo()');
                end;
                stringBuffer.append('WorkFlow does not exist<br />');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TDeleteValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TDeleteValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TDeleteValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

