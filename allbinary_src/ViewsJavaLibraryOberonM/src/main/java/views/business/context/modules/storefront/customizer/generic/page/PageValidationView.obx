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
// package views.business.context.modules.storefront.customizer.generic.page
unit PageValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, PageView;

type
  {AB:TYPES}
  TPageValidationView = class(TPageView, IValidationComponentInterface)
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
  BasicArrayList, TransformInfoEntity, TransformInfoEntityBuilder, DomDocumentHelper, XmlDocumentHelper, StdUtil, StringMaker, TransformInfo, TransformInfoHttpInterface, TransformInfoObjectConfigInterface, PageValidation, TitleData, CustomizerUtil;


{AB:CODE}

procedure TPageValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TPageValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPageValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'PageViewValidation()');
        end;
end;
    

function TPageValidationView.isValid: Boolean;
var
  isValid: Boolean;
  transformInfoEntityInterface: TTransformInfoEntity;
  pageObjectConfigInterface: ITransformInfoObjectConfigInterface;
  allViewsToBeModifiedVector: TBasicArrayList;
  size: Integer;
  transformInfoInterface_: TTransformInfo;
  viewNameOfViewToBeModified: string;
  stringBuffer: TStringMaker;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  specifiedTransformInfoInterface: ITransformInfoInterface;
  hashMap_: TJavaHashMap<TObject, TObject>;
  title: string;
  pageValidation_: TPageValidation;
  document_: TDocument;
  documentString: string;
  index: Integer;
begin
        try
            isValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            transformInfoEntityInterface := TTransformInfoEntityBuilder.getInstance();
            pageObjectConfigInterface := Self.getTransformInfoInterface().getObjectConfigInterface();
            allViewsToBeModifiedVector := pageObjectConfigInterface.getGroupTransforms();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Views To Be Modified: ' + IntToStr(allViewsToBeModifiedVector.size()), TJava.Box(Self), 'get(transformInfoInterface)');
            end;
            size := allViewsToBeModifiedVector.size();
            for index := 0 to size - 1 do begin
                transformInfoInterface_ := TTransformInfo(TJava.ToObject(allViewsToBeModifiedVector.get(index)));
                viewNameOfViewToBeModified := transformInfoInterface_.getName();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(Self.getTransformInfoInterface().getName());
                    stringBuffer.append(' is modifying view: ');
                    stringBuffer.append(viewNameOfViewToBeModified);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'insert()');
                end;
                httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
                specifiedTransformInfoInterface := transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext());
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(Self.getTransformInfoInterface().getName());
                    stringBuffer.append(' is adding data to view: ');
                    stringBuffer.append(viewNameOfViewToBeModified);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'insert()');
                end;
                hashMap_ := TStdUtil.getInstance().createHashMap();
                title := specifiedTransformInfoInterface.getName().substring(Self.getTransformInfoInterface().getStoreName().length());
                if (CompareStr(title, 'index')) = (0) then begin
                    hashMap_.put(TJava.Box(TTitleData.getInstance().TEXT), TJava.Box(TJava.ToString(Self.getTransformInfoInterface().getStoreName()) + ' - Home Page'));
                end else begin
                    hashMap_.put(TJava.Box(TTitleData.getInstance().TEXT), TJava.Box(TJava.ToString(Self.getTransformInfoInterface().getStoreName()) + ' -' + title));
                end;
                pageValidation_ := TPageValidation.Create(hashMap_);
                if (pageValidation_.isValid()) = (False) then begin
                    isValid := False;
                end;
                if (isValid) = (True) then begin
                    document_ := TDomDocumentHelper.create_();
                    document_.appendChild(pageValidation_.toXmlNode(document_));
                    documentString := TXmlDocumentHelper.toString(document_);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append(viewNameOfViewToBeModified);
                        stringBuffer.append(' is changing data in ');
                        stringBuffer.append(specifiedTransformInfoInterface.getDataFilePath().toString());
                        stringBuffer.append(' to the following data:'#10'');
                        stringBuffer.append(documentString);
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                    end;
                    TCustomizerUtil.getInstance().write(specifiedTransformInfoInterface, documentString);
                end;
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
    

function TPageValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
  transformInfoEntityInterface: TTransformInfoEntity;
  objectConfig: ITransformInfoObjectConfigInterface;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  allViewsToBeModifiedVector: TBasicArrayList;
  size: Integer;
  transformInfoInterface_: TTransformInfo;
  viewNameOfViewToBeModified: string;
  specifiedTransformInfoInterface: ITransformInfoInterface;
  hashMap_: TJavaHashMap<TObject, TObject>;
  title: string;
  pageValidation_: TPageValidation;
  index: Integer;
begin
        try
            stringBuffer := TStringMaker.Create();
            transformInfoEntityInterface := TTransformInfoEntityBuilder.getInstance();
            objectConfig := Self.getTransformInfoInterface().getObjectConfigInterface();
            httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
            allViewsToBeModifiedVector := objectConfig.getGroupTransforms();
            size := allViewsToBeModifiedVector.size();
            for index := 0 to size - 1 do begin
                transformInfoInterface_ := TTransformInfo(TJava.ToObject(allViewsToBeModifiedVector.get(index)));
                viewNameOfViewToBeModified := transformInfoInterface_.getName();
                specifiedTransformInfoInterface := transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext());
                hashMap_ := TStdUtil.getInstance().createHashMap();
                title := specifiedTransformInfoInterface.getName().substring(Self.getTransformInfoInterface().getStoreName().length());
                if (CompareStr(title, 'index')) = (0) then begin
                    hashMap_.put(TJava.Box(TTitleData.getInstance().TEXT), TJava.Box(TJava.ToString(Self.getTransformInfoInterface().getStoreName()) + ' - Home Page'));
                end else begin
                    hashMap_.put(TJava.Box(TTitleData.getInstance().TEXT), TJava.Box(TJava.ToString(Self.getTransformInfoInterface().getStoreName()) + ' -' + title));
                end;
                pageValidation_ := TPageValidation.Create(hashMap_);
                if (pageValidation_.isValid()) = (False) then begin
                    stringBuffer.append('TransformInfo Name for PageValidation:' + specifiedTransformInfoInterface.getName());
                    stringBuffer.append('PageValidation:' + TJava.ToString(hashMap_));
                    stringBuffer.append('PageValidation Info:' + TJava.ToString(pageValidation_.validationInfo()));
                end;
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('An auto generated page name was invalid.');
            end;
        end;
end;
    

function TPageValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TPageValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TPageValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

