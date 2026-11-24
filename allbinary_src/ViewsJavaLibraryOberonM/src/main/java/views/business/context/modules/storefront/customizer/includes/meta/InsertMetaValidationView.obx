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
// package views.business.context.modules.storefront.customizer.includes.meta
unit InsertMetaValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, MetaView;

type
  {AB:TYPES}
  TInsertMetaValidationView = class(TMetaView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlDoc: TDocument; virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  DomNodeInterface, StringMaker, CustomizerUtil;


{AB:CODE}

procedure TInsertMetaValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TInsertMetaValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInsertMetaValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
function TInsertMetaValidationView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertMetaValidationView.isValid: Boolean;
var
  isValid: Boolean;
begin
        try
            isValid := True;
            TCustomizerUtil.getInstance().insert(Self.getTransformInfoInterface(), (TJava.ToObject(Self) as IDomNodeInterface));
            Exit(isValid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInsertMetaValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
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
    

function TInsertMetaValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertMetaValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TInsertMetaValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

