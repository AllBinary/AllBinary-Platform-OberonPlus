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
// package views.business.context.modules.storefront.customizer.includes.style.theme
unit EditThemeValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, ThemeCustomizerView;

type
  {AB:TYPES}
  TEditThemeValidationView = class(TThemeCustomizerView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
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
  CategoryFactoryInterface, CategoryInterface, StoreThemeCategoryFactory, StoreThemeCategoryInterface, StoreThemeCategoryPathValidationView, CategoryLoaderFactory, CategoryLoaderInterface, DomNodeInterface, DomDocumentHelper, XmlDocumentHelper, StringMaker;


{AB:CODE}

procedure TEditThemeValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TEditThemeValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEditThemeValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TEditThemeValidationView.isValid: Boolean;
var
  isValid: Boolean;
  categoryFactoryInterface_: ICategoryFactoryInterface;
  categoryLoaderInterface_: ICategoryLoaderInterface;
  rootStoreThemeCategoryInterface: IStoreThemeCategoryInterface;
  storeThemeCategoryInterface_: IStoreThemeCategoryInterface;
  domNodeInterface_: IDomNodeInterface;
  document_: TDocument;
  documentString: string;
begin
        try
            isValid := True;
            categoryFactoryInterface_ := TStoreThemeCategoryFactory.Create(Self.getTransformInfoInterface());
            categoryLoaderInterface_ := TCategoryLoaderFactory.getInstance(categoryFactoryInterface_);
            rootStoreThemeCategoryInterface := (TJava.ToObject(categoryFactoryInterface_.getRootInstance()) as IStoreThemeCategoryInterface);
            storeThemeCategoryInterface_ := (TJava.ToObject(categoryLoaderInterface_.getAll((TJava.ToObject(rootStoreThemeCategoryInterface) as ICategoryInterface))) as IStoreThemeCategoryInterface);
            Self.validationInterface := TStoreThemeCategoryPathValidationView.Create((TJava.ToObject(storeThemeCategoryInterface_) as IStoreThemeCategoryInterface));
            isValid := Self.validationInterface.isValid();
            domNodeInterface_ := (TJava.ToObject(Self.validationInterface) as IDomNodeInterface);
            document_ := TDomDocumentHelper.create_();
            document_.appendChild(domNodeInterface_.toXmlNode(document_));
            documentString := TXmlDocumentHelper.toString(document_);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.putF('Setting Data: ' + documentString, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            end;
            Self.getTransformInfoInterface().setData(documentString);
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
    

function TEditThemeValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.validationInterface.validationInfo());
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
    

function TEditThemeValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TEditThemeValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TEditThemeValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

