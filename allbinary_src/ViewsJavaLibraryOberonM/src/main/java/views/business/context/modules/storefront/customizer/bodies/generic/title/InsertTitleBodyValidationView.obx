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
// package views.business.context.modules.storefront.customizer.bodies.generic.title
unit InsertTitleBodyValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, TitleBodyCustomizerView;

type
  {AB:TYPES}
  TInsertTitleBodyValidationView = class(TTitleBodyCustomizerView, IValidationComponentInterface)
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
        function view: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  DomNodeInterface, RequestParams, StringMaker, TitleBodyValidation, CustomizerUtil, StoreCustomizerComponentUtil;


{AB:CODE}

procedure TInsertTitleBodyValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TInsertTitleBodyValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInsertTitleBodyValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  requestHashMap: TJavaHashMap<TObject, TObject>;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        requestHashMap := TRequestParams.Create(Self.getPageContext()).toHashMap();
        Self.titleBody := TTitleBodyValidation.Create(requestHashMap);
end;
    

// throws Exception
function TInsertTitleBodyValidationView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertTitleBodyValidationView.isValid: Boolean;
var
  isValid: Boolean;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Started Validation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            isValid := Self.titleBody.isValid();
            if (isValid) = (True) then begin
                TCustomizerUtil.getInstance().insert(Self.getTransformInfoInterface(), (TJava.ToObject(Self.titleBody) as IDomNodeInterface));
            end;
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
    

function TInsertTitleBodyValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.titleBody.validationInfo());
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
    

function TInsertTitleBodyValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertTitleBodyValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TInsertTitleBodyValidationView.view: string;
begin
        try
            Exit(TStoreCustomizerComponentUtil.getInstance().generate(Self.abeClientInformation, Self.getTransformInfoInterface()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TInsertTitleBodyValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

