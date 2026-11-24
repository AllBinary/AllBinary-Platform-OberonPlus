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
// package views.business.context.modules.storefront.customizer.template.objectConfig
unit NoTemplateTransformInfoObjectConfig;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, TransformInfoObjectConfig, Document;

type
  {AB:TYPES}
  TNoTemplateTransformInfoObjectConfig = class(TTransformInfoObjectConfig)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; document_: TDocument); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; name: string; type_: string); overload;
        function generate(objectConfigDocument: TDocument): TDocument; virtual;
  end;

implementation
uses
  StoreFrontData, DomDocumentHelper, XmlDocumentHelper, StdUtil, Replace, TransformInfoData, TransformInfoObjectConfigData, TransformTemplateCustomizerUtil;


{AB:CODE}

procedure TNoTemplateTransformInfoObjectConfig.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TNoTemplateTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

constructor TNoTemplateTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface; document_: TDocument);
begin
        inherited Create(transformInfoInterface_, document_);
        InitFields;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

constructor TNoTemplateTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface; name: string; type_: string);
begin
        inherited Create(transformInfoInterface_, name, type_);
        InitFields;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

// throws Exception
function TNoTemplateTransformInfoObjectConfig.generate(objectConfigDocument: TDocument): TDocument;
var
  docString: string;
  storeName: string;
  viewName: string;
  hashMap_: TJavaHashMap<TObject, TObject>;
  VARKEY: string;
  pageName: string;
  replace_: TReplace;
  newObjectConfigDocument: TDocument;
begin
        docString := TXmlDocumentHelper.toString(objectConfigDocument);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Initial ObjectConfig: ' + docString, TJava.Box(Self), 'generate()');
        end;
        storeName := Self.getTransformInfoInterface().getStoreName();
        viewName := Self.getTransformInfoInterface().getName();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        VARKEY := TTransformInfoObjectConfigData.getInstance().VARKEY;
        hashMap_.put(TJava.Box(VARKEY + TJava.ToString(TStoreFrontData.getInstance().NAME)), TJava.Box(storeName));
        hashMap_.put(TJava.Box(VARKEY + TJava.ToString(TTransformInfoData.getInstance().OWNER)), TJava.Box(viewName));
        pageName := TTransformTemplateCustomizerUtil.getInstance().getPageNameHack(Self.getTransformInfoInterface().getName(), Self.getTransformInfoInterface().getStoreName());
        hashMap_.put(TJava.Box(VARKEY + TJava.ToString(TTransformInfoData.getInstance().PARTIAL)), TJava.Box(pageName));
        replace_ := TReplace.Create(hashMap_);
        newObjectConfigDocument := TDomDocumentHelper.create_(replace_.all(docString));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Final ObjectConfig: ' + TXmlDocumentHelper.toString(newObjectConfigDocument), TJava.Box(Self), 'generate()');
        end;
        Exit(newObjectConfigDocument);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

