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
// package views.business.context.modules.storefront.customizer
unit CustomizerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, TransformInfoInterface, Document;

type
  {AB:TYPES}
  TCustomizerUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TCustomizerUtil;
    procedure InitFields;
        class function getInstance: TCustomizerUtil; static;
        constructor Create;
        function getTransformInfoInterfaceToCustomize(customizerTransformInfoInterface: ITransformInfoInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInfoInterface; virtual;
        function getTransformInfoObjectConfigComponentNodesToCustomize(customizerTransformInfoInterface: ITransformInfoInterface; transformInfoInterface_: ITransformInfoInterface): TBasicArrayList; virtual;
        function getTransformInfoObjectConfigComponentNodes(transformInfoInterface_: ITransformInfoInterface): TBasicArrayList; virtual;
        function getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface_: ITransformInfoInterface): TBasicArrayList; virtual;
        procedure insert(transformInfoInterface_: ITransformInfoInterface; domNodeInterface_: IDomNodeInterface); virtual;
        procedure write(specifiedTransformInfoInterface: ITransformInfoInterface; documentString: string); virtual;
        function getViewDataForComponentsInObjectConfig(transformInfoInterface_: ITransformInfoInterface): TDocument; virtual;
  end;

implementation
uses
  TransformInfoEntity, TransformInfoEntityBuilder, DomDocumentHelper, XmlDocumentHelper, StringMaker, TransformInfo, TransformInfoHttpInterface, TransformInfoObjectConfigInterface;


{AB:CODE}

procedure TCustomizerUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TCustomizerUtil.getInstance: TCustomizerUtil;
begin
        Exit(TCustomizerUtil.instance);
end;
    

constructor TCustomizerUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TCustomizerUtil.getTransformInfoInterfaceToCustomize(customizerTransformInfoInterface: ITransformInfoInterface; transformInfoInterface_: ITransformInfoInterface): ITransformInfoInterface;
var
  transformInfoEntityInterface: TTransformInfoEntity;
  viewName: string;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  customizedTransformInfoInterface: ITransformInfoInterface;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + customizerTransformInfoInterface.getName(), TJava.Box(Self), 'getTransformInfoInterfaceToCustomize()');
        end;
        transformInfoEntityInterface := TTransformInfoEntityBuilder.getInstance();
        viewName := transformInfoInterface_.getName();
        httpTransformInfoInterface := (TJava.ToObject(customizerTransformInfoInterface) as ITransformInfoHttpInterface);
        customizedTransformInfoInterface := transformInfoEntityInterface.get(viewName, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext());
        Exit(customizedTransformInfoInterface);
end;
    

// throws Exception
function TCustomizerUtil.getTransformInfoObjectConfigComponentNodesToCustomize(customizerTransformInfoInterface: ITransformInfoInterface; transformInfoInterface_: ITransformInfoInterface): TBasicArrayList;
var
  transformInfoEntityInterface: TTransformInfoEntity;
  viewName: string;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  customizedTransformInfoInterface: ITransformInfoInterface;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + customizerTransformInfoInterface.getName(), TJava.Box(Self), 'getTransformInfoObjectConfigComponentNodesToCustomize()');
        end;
        transformInfoEntityInterface := TTransformInfoEntityBuilder.getInstance();
        viewName := transformInfoInterface_.getName();
        httpTransformInfoInterface := (TJava.ToObject(customizerTransformInfoInterface) as ITransformInfoHttpInterface);
        customizedTransformInfoInterface := transformInfoEntityInterface.get(viewName, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext());
        Exit(Self.getTransformInfoObjectConfigComponentNodes(customizedTransformInfoInterface));
end;
    

// throws Exception
function TCustomizerUtil.getTransformInfoObjectConfigComponentNodes(transformInfoInterface_: ITransformInfoInterface): TBasicArrayList;
var
  transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'getTransformInfoObjectConfigComponentNodes()');
        end;
        transformInfoObjectConfigInterface_ := transformInfoInterface_.getObjectConfigInterface();
        Exit(transformInfoObjectConfigInterface_.getTransforms());
end;
    

// throws Exception
function TCustomizerUtil.getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface_: ITransformInfoInterface): TBasicArrayList;
var
  transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'getTransformInfoObjectConfigComponentNodes()');
        end;
        transformInfoObjectConfigInterface_ := transformInfoInterface_.getObjectConfigInterface();
        Exit(transformInfoObjectConfigInterface_.getGroupTransforms());
end;
    

// throws Exception
procedure TCustomizerUtil.insert(transformInfoInterface_: ITransformInfoInterface; domNodeInterface_: IDomNodeInterface);
var
  transformInfoEntityInterface: TTransformInfoEntity;
  allViewsToBeModified: TBasicArrayList;
  document_: TDocument;
  documentString: string;
  stringBuffer: TStringMaker;
  size: Integer;
  transformInfo_: TTransformInfo;
  viewNameOfViewToBeModified: string;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  specifiedTransformInfoInterface: ITransformInfoInterface;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'insert()');
        end;
        transformInfoEntityInterface := TTransformInfoEntityBuilder.getInstance();
        allViewsToBeModified := Self.getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface_);
        document_ := TDomDocumentHelper.create_();
        document_.appendChild(domNodeInterface_.toXmlNode(document_));
        documentString := TXmlDocumentHelper.toString(document_);
        stringBuffer := TStringMaker.Create();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer.append('Total Views For Modification: ');
            stringBuffer.appendint(allViewsToBeModified.size());
            stringBuffer.append(' New Xml/Data: ');
            stringBuffer.append(documentString);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'insert()');
        end;
        transformInfoInterface_.setData(documentString);
        size := allViewsToBeModified.size();
        for index := 0 to size - 1 do begin
            transformInfo_ := TTransformInfo(TJava.ToObject(allViewsToBeModified.get(index)));
            viewNameOfViewToBeModified := transformInfo_.getName();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(transformInfoInterface_.getName());
                stringBuffer.append(' is modifying view: ');
                stringBuffer.append(viewNameOfViewToBeModified);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'insert()');
            end;
            httpTransformInfoInterface := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpInterface);
            specifiedTransformInfoInterface := transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext());
            if (specifiedTransformInfoInterface) = (nil) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append(transformInfoInterface_.getName());
                    stringBuffer.append(' is unable to add data to view: ');
                    stringBuffer.append(viewNameOfViewToBeModified);
                    stringBuffer.append(' since it does not exist');
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'insert()');
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF(transformInfoInterface_.getName() + ' is adding data to view: ' + viewNameOfViewToBeModified, TJava.Box(Self), 'insert()');
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append(viewNameOfViewToBeModified);
                    stringBuffer.append(' is changing data in ');
                    stringBuffer.append(specifiedTransformInfoInterface.getDataFilePath().toString());
                    stringBuffer.append(' to the following data:'#10'');
                    stringBuffer.append(documentString);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'insert()');
                end;
                Self.write(specifiedTransformInfoInterface, documentString);
            end;
        end;
end;
    

// throws Exception
procedure TCustomizerUtil.write(specifiedTransformInfoInterface: ITransformInfoInterface; documentString: string);
var
  transformInfoEntityInterface: TTransformInfoEntity;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + specifiedTransformInfoInterface.getName(), TJava.Box(Self), 'write()');
        end;
        transformInfoEntityInterface := TTransformInfoEntityBuilder.getInstance();
        specifiedTransformInfoInterface.setData(documentString);
        transformInfoEntityInterface.update(specifiedTransformInfoInterface.toHashMap());
end;
    

// throws Exception
function TCustomizerUtil.getViewDataForComponentsInObjectConfig(transformInfoInterface_: ITransformInfoInterface): TDocument;
var
  transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface;
  allViewsToBeModified: TBasicArrayList;
  transformInfoEntityInterface: TTransformInfoEntity;
  size: Integer;
  nextTransformInfoInterface: TTransformInfo;
  viewNameOfViewToBeModified: string;
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  specifiedTransformInfoInterface: ITransformInfoInterface;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('View Name: ' + transformInfoInterface_.getName(), TJava.Box(Self), 'getViewDataForComponentsInObjectConfig()');
        end;
        transformInfoObjectConfigInterface_ := transformInfoInterface_.getObjectConfigInterface();
        allViewsToBeModified := transformInfoObjectConfigInterface_.getGroupTransforms();
        transformInfoEntityInterface := TTransformInfoEntityBuilder.getInstance();
        size := allViewsToBeModified.size();
        for index := 0 to size - 1 do begin
            nextTransformInfoInterface := TTransformInfo(TJava.ToObject(allViewsToBeModified.get(index)));
            viewNameOfViewToBeModified := nextTransformInfoInterface.getName();
            httpTransformInfoInterface := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpInterface);
            specifiedTransformInfoInterface := transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext());
            Exit(specifiedTransformInfoInterface.getDataDocument());
        end;
        raise SysUtils.Exception.Create('No Components Specified in ObjectConfig');
end;

initialization
  {AB:INITIALIZATION}
  TCustomizerUtil.instance := TCustomizerUtil.Create();
  {AB:END}

end.

