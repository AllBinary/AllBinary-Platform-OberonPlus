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
// package org.allbinary.business.user.commerce.money.tax.modules
unit SimpleStateTaxModule;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, StreetAddress, LogUtil, CommonStrings, Document, TaxModuleInterface;

type
  {AB:TYPES}
  TSimpleStateTaxModule = class(TInterfacedObject, ITaxModuleInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    streetAddress: TStreetAddress;
    storeFrontInterface: IStoreFrontInterface;
    ALL: string;
    STATETAXPATH: string;
    STATETAXFILE: string;
    document: TDocument;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getTaxRate(streetAddress_: TStreetAddress; storeFrontInterface_: IStoreFrontInterface): Single; virtual;
        function isValid(streetAddress_: TStreetAddress; storeFrontInterface_: IStoreFrontInterface): Boolean; virtual;
  end;

implementation
uses
  StreetAddressData, TaxData, DomNodeHelper, DomSearchHelper, DomDocumentHelper, XmlDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, CryptFileReader, AbPath, StringMaker, TransformInfoObjectConfigData, CommonPhoneStrings, Node, NodeList;


{AB:CODE}

procedure TSimpleStateTaxModule.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.ALL := TCommonPhoneStrings.getInstance().STAR;
  Self.STATETAXPATH := '/generic/taxes/';
  Self.STATETAXFILE := 'stateTaxation.xml';
  
end;

function TSimpleStateTaxModule.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSimpleStateTaxModule.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TSimpleStateTaxModule.getTaxRate(streetAddress_: TStreetAddress; storeFrontInterface_: IStoreFrontInterface): Single;
var
  fileAbPath: TAbPath;
  data: string;
  state: string;
  country: string;
  nodeList_: TNodeList;
  node_: TNode;
  taxNodeChildren: TNodeList;
  streetAddressNode: TNode;
  taxableStreetAddress: TStreetAddress;
  stringValidationUtil_: TObject;
  rateNode: TNode;
  taxRate: string;
  taxRateFloat: Single;
  index: Integer;
begin
        Self.streetAddress := streetAddress_;
        Self.storeFrontInterface := storeFrontInterface_;
        fileAbPath := TAbPath.Create(TJava.ToString((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)) + Self.storeFrontInterface.getName() + Self.STATETAXPATH, Self.STATETAXFILE);
        data := TCryptFileReader.Create(TTransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(fileAbPath);
        Self.document := TDomDocumentHelper.create_(data);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAX) then begin
            Self.logUtil.putF('Tax Doc: ' + TXmlDocumentHelper.toString(Self.document), TJava.Box(Self), 'getTaxRate');
        end;
        state := Self.streetAddress.getState();
        country := Self.streetAddress.getCountry();
        state := UpperCase(state);
        nodeList_ := Self.document.getElementsByTagName(TTaxData.NAME);
        for index := 0 to nodeList_.getLength() - 1 do begin
            node_ := nodeList_.item(index);
            taxNodeChildren := node_.getChildNodes();
            streetAddressNode := TDomSearchHelper.getNode(TStreetAddressData.NAME, taxNodeChildren);
            taxableStreetAddress := TStreetAddress.Create(streetAddressNode);
            stringValidationUtil_ := nil;
            if ((not ((country = ''))) and (not ((taxableStreetAddress.getCountry() = '')))) and ((CompareStr(country, taxableStreetAddress.getCountry())) = (0)) then begin
                if (((state) <> ('')) and (not TJava.IsNull(taxableStreetAddress.getState()))) and ((CompareStr(state, taxableStreetAddress.getState())) = (0)) then begin
                    rateNode := TDomSearchHelper.getNode(TTaxData.RATE, taxNodeChildren);
                    taxRate := TDomNodeHelper.getTextNodeValue(rateNode);
                    taxRateFloat := (taxRate.floatValue()) * (.01);
                    Exit(taxRateFloat);
                end;
            end;
        end;
        Exit(0);
end;
    

function TSimpleStateTaxModule.isValid(streetAddress_: TStreetAddress; storeFrontInterface_: IStoreFrontInterface): Boolean;
var
  fileAbPath: TAbPath;
  data: string;
  country: string;
  rootNode: TNode;
  nodeList_: TNodeList;
  node_: TNode;
  taxNodeChildren: TNodeList;
  streetAddressNode: TNode;
  stringBuffer: TStringMaker;
  taxableStreetAddress: TStreetAddress;
  stringValidationUtil_: TObject;
  state: string;
  index: Integer;
begin
        try
            Self.streetAddress := streetAddress_;
            Self.storeFrontInterface := storeFrontInterface_;
            fileAbPath := TAbPath.Create(TJava.ToString((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)) + Self.storeFrontInterface.getName() + Self.STATETAXPATH, Self.STATETAXFILE);
            data := TCryptFileReader.Create(TTransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(fileAbPath);
            Self.document := TDomDocumentHelper.create_(data);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAX) then begin
                Self.logUtil.putF('Tax Doc: ' + TXmlDocumentHelper.toString(Self.document), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            country := Self.streetAddress.getCountry();
            rootNode := Self.document.getElementsByTagName(TTransformInfoObjectConfigData.getInstance().NAME).item(0);
            nodeList_ := Self.document.getElementsByTagName(TTaxData.NAME);
            for index := 0 to nodeList_.getLength() - 1 do begin
                node_ := nodeList_.item(index);
                taxNodeChildren := node_.getChildNodes();
                streetAddressNode := TDomSearchHelper.getNode(TStreetAddressData.NAME, taxNodeChildren);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAX) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('StreetAddress Node: ');
                    stringBuffer.append(streetAddressNode.getNodeName());
                    stringBuffer.append(' Value: ');
                    stringBuffer.append(streetAddressNode.getNodeValue());
                    stringBuffer.append(' Number Of Children: ');
                    stringBuffer.appendint(Integer(Trunc(streetAddressNode.getChildNodes().getLength())));
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                taxableStreetAddress := TStreetAddress.Create(streetAddressNode);
                stringValidationUtil_ := nil;
                if ((not ((country = ''))) and (not ((taxableStreetAddress.getCountry() = '')))) and ((taxableStreetAddress.getCountry().compareTo(Self.ALL)) = (0)) then begin
                    Exit(True);
                end;
                if ((not ((country = ''))) and (not ((taxableStreetAddress.getCountry() = '')))) and ((CompareStr(country, taxableStreetAddress.getCountry())) = (0)) then begin
                    state := Self.streetAddress.getState();
                    if (state) <> ('') then begin
                        Exit(True);
                    end;
                end;
            end;
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

