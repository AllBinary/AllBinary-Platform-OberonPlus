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
// package org.allbinary.business.user.commerce.money.tax
unit TaxFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, TaxModuleInterface, LogUtil, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TTaxFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    TAXATIONFILENAME: string;
    class var instance: TTaxFactory;
    procedure InitFields;
        class function getInstance: TTaxFactory; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface): ITaxModuleInterface; overload; virtual;
  end;

implementation
uses
  DynamicObjectData, TaxData, SimpleStateTaxModule, DomNodeHelper, DomSearchHelper, DomDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, CryptFileReader, AbPath, AbPathData, StringMaker, AbeFactory, TransformInfoObjectConfigData, Document, Node, NodeList;


{AB:CODE}

procedure TTaxFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.TAXATIONFILENAME := 'taxationMethod.xml';
end;
    

class function TTaxFactory.getInstance: TTaxFactory;
begin
        Exit(TTaxFactory.instance);
end;
    

constructor TTaxFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTaxFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface): ITaxModuleInterface;
var
  stringBuffer: TStringMaker;
  abPath_: TAbPath;
  transformInfoObjectConfigData_: TTransformInfoObjectConfigData;
  data: string;
  document_: TDocument;
  taxNameNodeList: TNodeList;
  node_: TNode;
  nodeList_: TNodeList;
  classNameNode: TNode;
  className: string;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(storeFrontInterface_.getName());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append('generic');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append('taxes');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        abPath_ := TAbPath.Create(stringBuffer.toString(), Self.TAXATIONFILENAME);
        transformInfoObjectConfigData_ := TTransformInfoObjectConfigData.getInstance();
        data := TCryptFileReader.Create(transformInfoObjectConfigData_.UNCRYPTED_EXTENSION, transformInfoObjectConfigData_.ENCRYPTED_EXTENSION).get(abPath_);
        document_ := TDomDocumentHelper.create_(data);
        taxNameNodeList := document_.getElementsByTagName(TTaxData.NAME);
        for index := 0 to taxNameNodeList.getLength() - 1 do begin
            node_ := taxNameNodeList.item(index);
            nodeList_ := node_.getChildNodes();
            if (nodeList_) <> (nil) then begin
                classNameNode := TDomSearchHelper.getNode(TDynamicObjectData.NAME, nodeList_);
                if (classNameNode) <> (nil) then begin
                    className := TDomNodeHelper.getTextNodeValue(classNameNode);
                    Exit((TJava.ToObject(TAbeFactory.getInstance().getInstance(abeClientInformation, className)) as ITaxModuleInterface));
                end else begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAX) then begin
                        Self.logUtil.putF('Class Node Null', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
                    end;
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAX) then begin
                    Self.logUtil.putF('Tax Name Node Node Children', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
                end;
            end;
        end;
        Exit((TJava.ToObject(TSimpleStateTaxModule.Create()) as ITaxModuleInterface));
end;

initialization
  {AB:INITIALIZATION}
  TTaxFactory.instance := TTaxFactory.Create();
  {AB:END}

end.

