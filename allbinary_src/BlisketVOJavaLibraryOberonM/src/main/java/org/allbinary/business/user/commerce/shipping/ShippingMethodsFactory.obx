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
// package org.allbinary.business.user.commerce.shipping
unit ShippingMethodsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, ShippingInterface, AbeClientInformationInterface, Document;

type
  {AB:TYPES}
  TShippingMethodsFactory = class(TObject)
  public
    defaultShippingMethodInterface: IShippingInterface;
    document: TDocument;
    shippingVector: TBasicArrayList;
    class var SHIPPINGMETHODSFILEPATHSTRING: string;
    class var SHIPPINGMETHODSFILENAME: string;
    procedure InitFields;
    class procedure StaticInitializer; static;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface);
        function getInstance: TBasicArrayList; virtual;
        function getDefaultInstance: IShippingInterface; virtual;
  end;

implementation
uses
  ShippingMethodsData, ShippingMethodData, BasicArrayListD, DynamicObjectData, BasicWeightShippingModuleView, NoShippingModuleView, DomNodeHelper, DomSearchHelper, DomDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, StdUtil, CryptFileReader, AbPath, AbPathData, StringMaker, AbeFactory, TransformInfoObjectConfigData, Node, NodeList;


{AB:CODE}

procedure TShippingMethodsFactory.InitFields;
begin
  
  
  
end;
    

class procedure TShippingMethodsFactory.StaticInitializer;
var
  stringBuffer: TStringMaker;
  sep: string;
begin
        stringBuffer := TStringMaker.Create();
        sep := TAbPathData.getInstance().SEPARATOR;
        stringBuffer.append(sep);
        stringBuffer.append('generic');
        stringBuffer.append(sep);
        stringBuffer.append('shipping');
        stringBuffer.append(sep);
        TShippingMethodsFactory.SHIPPINGMETHODSFILEPATHSTRING := stringBuffer.toString();
end;
    

constructor TShippingMethodsFactory.Create(abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface);
var
  stringBuffer: TStringMaker;
  sep: string;
  abPath_: TAbPath;
  data: string;
  nodeList_: TNodeList;
  node_: TNode;
  shippingMethodNodeChildren: TNodeList;
  shippingMethodNameNode: TNode;
  classNameNode: TNode;
  shippingMethodClassName: string;
  shippingMethodInterface: IShippingInterface;
  defaultShippingMethodNameNode: TNode;
  defaultShippingMethodNameNodeValue: string;
  index: Integer;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        sep := TAbPathData.getInstance().SEPARATOR;
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(storeFrontInterface_.getName());
        stringBuffer.append(sep);
        stringBuffer.append(TShippingMethodsFactory.SHIPPINGMETHODSFILEPATHSTRING);
        abPath_ := TAbPath(TJava.ToObject(TAbPath.Create(stringBuffer.toString(), Self.SHIPPINGMETHODSFILENAME)));
        data := TCryptFileReader.Create(TTransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(abPath_);
        Self.document := TDomDocumentHelper.create_(data);
        Self.shippingVector := TBasicArrayListD.Create();
        nodeList_ := Self.document.getElementsByTagName(TShippingMethodsData.NAME);
        for index := 0 to nodeList_.getLength() - 1 do begin
            node_ := nodeList_.item(index);
            shippingMethodNodeChildren := node_.getChildNodes();
            shippingMethodNameNode := TDomSearchHelper.getNode(TShippingMethodData.NAME, shippingMethodNodeChildren);
            classNameNode := TDomSearchHelper.getNode(TDynamicObjectData.NAME, shippingMethodNameNode.getChildNodes());
            shippingMethodClassName := TDomNodeHelper.getTextNodeValue(classNameNode);
            shippingMethodInterface := (TJava.ToObject(TAbeFactory.getInstance().getInstance(abeClientInformation, shippingMethodClassName)) as IShippingInterface);
            Self.shippingVector.add(TJava.Box(shippingMethodInterface));
            defaultShippingMethodNameNode := TDomSearchHelper.getNode(TShippingMethodData.DEFAULT, shippingMethodNameNode.getChildNodes());
            defaultShippingMethodNameNodeValue := TDomNodeHelper.getTextNodeValue(defaultShippingMethodNameNode);
            if ((defaultShippingMethodNameNodeValue) <> ('')) and ((CompareStr(defaultShippingMethodNameNodeValue, TShippingMethodData.DEFAULT)) = (0)) then begin
                Self.defaultShippingMethodInterface := shippingMethodInterface;
            end;
        end;
        if (Self.shippingVector.size()) < (1) then begin
            Self.defaultShippingMethodInterface := TBasicWeightShippingModuleView.Create();
            Self.shippingVector.add(TJava.Box(Self.defaultShippingMethodInterface));
            Self.shippingVector.add(TJava.Box(TNoShippingModuleView.Create()));
        end;
end;
    

// throws Exception
function TShippingMethodsFactory.getInstance: TBasicArrayList;
begin
        Exit(Self.shippingVector);
end;
    

function TShippingMethodsFactory.getDefaultInstance: IShippingInterface;
begin
        Exit(Self.defaultShippingMethodInterface);
end;

initialization
  {AB:INITIALIZATION}
  
  TShippingMethodsFactory.SHIPPINGMETHODSFILENAME := 'shippingMethods.xml';
  TShippingMethodsFactory.StaticInitializer;
  {AB:END}

end.

