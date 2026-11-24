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
// package org.allbinary.logic.visual.transform.info.objectConfig
unit GenericStoreTransformInfoObjectConfig;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInfoHttp, TransformInfoInterface, Document, TransformInfoObjectConfig;

type
  {AB:TYPES}
  TGenericStoreTransformInfoObjectConfig = class(TTransformInfoObjectConfig)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; name: string; type_: string); overload;
        function generate(objectConfigDocument: TDocument): TDocument; overload; virtual;
        function createReplaceHashMap(transformInfoHttpStoreInterface: TTransformInfoHttp; objectConfigDocumentString: string): TJavaHashMap<TObject, TObject>;
        function createHashMap(transformInfoHttpStoreInterface: TTransformInfoHttp; objectConfigDocumentString: string): TJavaHashMap<TObject, TObject>;
        function generate(objectConfigDocumentString: string; hashMap_: TJavaHashMap<TObject, TObject>): TDocument; overload;
  end;

implementation
uses
  TransformInfoObjectConfigData, StoreFrontData, DomDocumentHelper, XmlDocumentHelper, StdUtil, StringMaker, StringUtil, Replace, RootTransformInfoData, TransformInfoData, TransformTemplateFactory, TransformTemplateInterface, TransformTemplateCustomizerUtil, CommonSeps;


{AB:CODE}

procedure TGenericStoreTransformInfoObjectConfig.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TGenericStoreTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
end;
    

constructor TGenericStoreTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument);
begin
        inherited Create(transformInfoInterface_, document_);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

constructor TGenericStoreTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; name: string; type_: string);
begin
        inherited Create(transformInfoInterface_, name, type_);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

// throws Exception
function TGenericStoreTransformInfoObjectConfig.generate(objectConfigDocument: TDocument): TDocument;
var
  stringBuffer: TStringMaker;
  transformInfoHttpStoreInterface: TTransformInfoHttp;
  objectConfigDocumentString: string;
  replaceHashMap: TJavaHashMap<TObject, TObject>;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('TransformInfo: ');
            if not TJava.IsNull(Self.getTransformInfoInterface()) then begin
                stringBuffer.append(Self.getTransformInfoInterface().getName());
            end else begin
                stringBuffer.append('No Owner!?#@');
            end;
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'generate()');
        end;
        transformInfoHttpStoreInterface := TTransformInfoHttp(TJava.ToObject(Self.getTransformInfoInterface()));
        objectConfigDocumentString := TXmlDocumentHelper.toString(objectConfigDocument);
        replaceHashMap := Self.createReplaceHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString);
        Exit(Self.generate(objectConfigDocumentString, replaceHashMap));
end;
    

// throws Exception
function TGenericStoreTransformInfoObjectConfig.createReplaceHashMap(transformInfoHttpStoreInterface: TTransformInfoHttp; objectConfigDocumentString: string): TJavaHashMap<TObject, TObject>;
var
  storeName: string;
  hashMap_: TJavaHashMap<TObject, TObject>;
  transformInfoObjectConfigData_: TTransformInfoObjectConfigData;
  pageName: string;
begin
        storeName := transformInfoHttpStoreInterface.getStoreName();
        hashMap_ := Self.createHashMap(transformInfoHttpStoreInterface, objectConfigDocumentString);
        transformInfoObjectConfigData_ := TTransformInfoObjectConfigData.getInstance();
        hashMap_.put(TJava.Box((transformInfoObjectConfigData_.VARKEY) + (TStoreFrontData.getInstance().NAME)), TJava.Box(storeName));
        pageName := TTransformTemplateCustomizerUtil.getInstance().getPageNameHack(Self.getTransformInfoInterface().getName(), storeName);
        hashMap_.put(TJava.Box((transformInfoObjectConfigData_.VARKEY) + (TTransformInfoData.getInstance().PARTIAL)), TJava.Box(pageName));
        Exit(hashMap_);
end;
    

// throws Exception
function TGenericStoreTransformInfoObjectConfig.createHashMap(transformInfoHttpStoreInterface: TTransformInfoHttp; objectConfigDocumentString: string): TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  storeName: string;
  propertiesHashMap: TJavaHashMap<TObject, TObject>;
  templateNameOverride: string;
  templateNameStringBuffer: TStringMaker;
  templateNameKey: string;
  templateInterface: ITransformTemplateInterface;
  selectedTemplate: string;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        storeName := transformInfoHttpStoreInterface.getStoreName();
        propertiesHashMap := transformInfoHttpStoreInterface.getPropertiesHashMap();
        templateNameOverride := TStringUtil.getInstance().getNonNull(TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TTransformInfoData.getInstance().PARTIAL)))));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('TemplateNameOverride: ' + templateNameOverride, TJava.Box(Self), 'generate()');
        end;
        templateNameStringBuffer := TStringMaker.Create();
        templateNameStringBuffer.append(storeName);
        templateNameStringBuffer.append(templateNameOverride);
        templateNameStringBuffer.append(TCommonSeps.getInstance().SPACE);
        templateNameStringBuffer.append(TRootTransformInfoData.NAME);
        templateNameKey := (TTransformInfoObjectConfigData.getInstance().VARKEY) + (TTransformInfoData.getInstance().OWNER);
        if ((Pos(TJava.ToString(templateNameKey), objectConfigDocumentString) - 1)) <> (-1) then begin
            templateInterface := TTransformTemplateFactory.getInstance().getInstance(Self.abeClientInformation, templateNameStringBuffer.toString(), transformInfoHttpStoreInterface.getPropertiesHashMap(), transformInfoHttpStoreInterface.getPageContext());
            selectedTemplate := templateInterface.getName();
            hashMap_.put(TJava.Box(templateNameKey), TJava.Box(selectedTemplate));
        end;
        Exit(hashMap_);
end;
    

// throws Exception
function TGenericStoreTransformInfoObjectConfig.generate(objectConfigDocumentString: string; hashMap_: TJavaHashMap<TObject, TObject>): TDocument;
var
  replace_: TReplace;
  newObjectConfigDocument: TDocument;
begin
        replace_ := TReplace.Create(hashMap_);
        newObjectConfigDocument := TDomDocumentHelper.create_(replace_.all(objectConfigDocumentString));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Final ObjectConfig: ' + TXmlDocumentHelper.toString(newObjectConfigDocument), TJava.Box(Self), 'generate()');
        end;
        Exit(newObjectConfigDocument);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

