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
// package views.business.context.modules.storefront.customizer.hedges.header
unit InsertHeaderValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, TopBarView;

type
  {AB:TYPES}
  TInsertHeaderValidationView = class(TTopBarView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    LOGOPATH: string;
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
  StoreFrontFactory, StoreFrontInterface, DomNodeInterface, URLGLOBALS, MultipartRequestParams, StringMaker, HeadingValidation, LogoData, CustomizerUtil;


{AB:CODE}

procedure TInsertHeaderValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.LOGOPATH := 'logo/';
end;

function TInsertHeaderValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInsertHeaderValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  multipartRequestHashMap: TJavaHashMap<TObject, TObject>;
  storeFrontInterface_: IStoreFrontInterface;
  fullPath: string;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        multipartRequestHashMap := TMultipartRequestParams.Create(Self.getPageContext()).toHashMap();
        storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
        fullPath := TJava.ToString((TURLGLOBALS.getWebappPath()) + (storeFrontInterface_.getCurrentHostNamePath())) + Self.LOGOPATH;
        multipartRequestHashMap.put(TJava.Box(TLogoData.getInstance().IMAGEPATH), TJava.Box(fullPath));
        Self.heading := THeadingValidation.Create(multipartRequestHashMap);
end;
    

// throws Exception
function TInsertHeaderValidationView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertHeaderValidationView.isValid: Boolean;
var
  isValid: Boolean;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('topbarValidation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            isValid := Self.heading.isValid();
            if (isValid) = (True) then begin
                TCustomizerUtil.getInstance().insert(Self.getTransformInfoInterface(), (TJava.ToObject(Self) as IDomNodeInterface));
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
    

function TInsertHeaderValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.heading.validationInfo());
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
    

function TInsertHeaderValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertHeaderValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TInsertHeaderValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

