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
// package views.compound.objectConfig
unit CompoundContextTransformInfoObjectConfig;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInfoInterface, GenericStoreTransformInfoObjectConfig, Document;

type
  {AB:TYPES}
  TCompoundContextTransformInfoObjectConfig = class(TGenericStoreTransformInfoObjectConfig)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; name: string; type_: string); overload;
        function get: string; virtual;
        function createInputStream: TInputStream; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, DocumentToNode, StringMaker, StringUtil, Replace, TransformFactory, TransformInterface, RootTransformInfoData, TransformInfoData, TransformInfoDomNode, TransformInfoHttpInterface, CommonSeps;


{AB:CODE}

procedure TCompoundContextTransformInfoObjectConfig.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TCompoundContextTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(abeClientInformation, transformInfoInterface_);
        InitFields;
end;
    

constructor TCompoundContextTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument);
begin
        inherited Create(abeClientInformation, transformInfoInterface_, document_);
        InitFields;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

constructor TCompoundContextTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; name: string; type_: string);
begin
        inherited Create(abeClientInformation, transformInfoInterface_, name, type_);
        InitFields;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

// throws Exception
function TCompoundContextTransformInfoObjectConfig.get: string;
var
  storeName: string;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  templateNameOverride: string;
  stringBuffer: TStringMaker;
  rootComponentInterface: ITransformInterface;
  viewVector: TBasicArrayList;
  rootView: string;
  startXMLHeader: string;
  endXMLHeader: string;
  size: Integer;
  objectConfigTransformInfoDomNode: TTransformInfoDomNode;
  templateKey: string;
  componentInterface: ITransformInterface;
  replacementViewString: string;
  templateValue: string;
  replace_: TReplace;
  index: Integer;
begin
        storeName := Self.getTransformInfoInterface().getStoreName();
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        templateNameOverride := TStringUtil.getInstance().getNonNull(TJava.UnboxString(TJava.ToObject(httpTransformInfoInterface.getPropertiesHashMap().get(TTransformInfoData.getInstance().PARTIAL))));
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(storeName);
        stringBuffer.append(templateNameOverride);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TRootTransformInfoData.NAME);
        rootComponentInterface := TTransformFactory.getInstance().getInstance(Self.abeClientInformation, stringBuffer.toString(), Self.getTransformInfoInterface());
        viewVector := Self.getTransformDomNodes();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Root View Called with: ' + IntToStr(viewVector.size()), TJava.Box(Self), 'get(transformInfoInterface)');
        end;
        rootView := rootComponentInterface.view();
        startXMLHeader := '<xsl:text disable-output-escaping="yes" ><![CDATA[';
        endXMLHeader := ']]></xsl:text>';
        size := viewVector.size();
        for index := 0 to size - 1 do begin
            objectConfigTransformInfoDomNode := TTransformInfoDomNode(TJava.ToObject(viewVector.get(index)));
            templateKey := objectConfigTransformInfoDomNode.getReplaceKey();
            componentInterface := TTransformFactory.getInstance().getInstance(Self.abeClientInformation, objectConfigTransformInfoDomNode.getTransformInfoInterface().getName(), Self.getTransformInfoInterface());
            replacementViewString := componentInterface.view();
            replacementViewString := TDocumentToNode.convertDocumentToNodeString(replacementViewString);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(startXMLHeader);
            stringBuffer.append(replacementViewString);
            stringBuffer.append(endXMLHeader);
            templateValue := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append('Replacing: ');
                stringBuffer.append(templateKey);
                stringBuffer.append(' with ');
                stringBuffer.append(templateValue);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'get()');
            end;
            replace_ := TReplace.Create(templateKey, templateValue);
            rootView := replace_.all(rootView);
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('End: Result of a compound view: ' + rootView, TJava.Box(Self), 'get()');
        end;
        Exit(rootView);
end;
    

// throws Exception
function TCompoundContextTransformInfoObjectConfig.createInputStream: TInputStream;
var
  completeTemplateViewBytes: TArray<ShortInt>;
  bais: TByteArrayInputStream;
begin
        completeTemplateViewBytes := Self.get().getBytes();
        bais := TByteArrayInputStream.Create(completeTemplateViewBytes);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Template: ' + TJava.NewString(completeTemplateViewBytes).toString(), TJava.Box(Self), 'createInputStream()');
        end;
        Exit(bais);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

