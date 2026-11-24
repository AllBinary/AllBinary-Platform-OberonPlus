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
// package org.allbinary.logic.visual.dhtml.style
unit StylesValidationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, Document;

type
  {AB:TYPES}
  TStylesValidationFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TStylesValidationFactory;
    procedure InitFields;
        class function getInstance: TStylesValidationFactory; overload; static;
        constructor Create;
        function getInstance(document_: TDocument): TBasicArrayList; overload; virtual;
        class function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): TBasicArrayList; overload; static;
  end;

implementation
uses
  StylesData, StyleData, BasicArrayListD, DomSearchHelper, XmlDocumentHelper, NameSpaceRequestParamData, CssElementData, CssElementsValidationFactory, CommonStrings, Node, NodeList;


{AB:CODE}

procedure TStylesValidationFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TStylesValidationFactory.getInstance: TStylesValidationFactory;
begin
        Exit(TStylesValidationFactory.instance);
end;
    

constructor TStylesValidationFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TStylesValidationFactory.getInstance(document_: TDocument): TBasicArrayList;
var
  commonStrings_: TCommonStrings;
  nodeList_: TNodeList;
  stylesNode: TNode;
  styleNodeList: TBasicArrayList;
  styleNode: TNode;
  cssElementStyleNodeList: TBasicArrayList;
  styleNodesIndex: Integer;
  index: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        nodeList_ := document_.getElementsByTagName(TStylesData.getInstance().NAME);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Style Present: ' + TXmlDocumentHelper.toString(document_), TJava.Box(Self), commonStrings_.GET_INSTANCE);
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Styles Present: ' + TJava.ToString(nodeList_.getLength()), TJava.Box(Self), commonStrings_.GET_INSTANCE);
        end;
        for index := 0 to nodeList_.getLength() - 1 do begin
            stylesNode := nodeList_.item(index);
            styleNodeList := TDomSearchHelper.getAllNodes(TStyleData.getInstance().NAME, stylesNode.getChildNodes());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Number Of Style Nodes Present: ' + IntToStr(styleNodeList.size()), TJava.Box(Self), commonStrings_.GET_INSTANCE);
            end;
            for styleNodesIndex := 0 to styleNodeList.size() - 1 do begin
                styleNode := TNode(TJava.ToObject(styleNodeList.get(styleNodesIndex)));
                cssElementStyleNodeList := TDomSearchHelper.getAllNodes(TCssElementData.getInstance().NAME, styleNode.getChildNodes());
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Number Of Element Nodes Present: ' + IntToStr(cssElementStyleNodeList.size()), TJava.Box(Self), commonStrings_.GET_INSTANCE);
                end;
                Exit(TCssElementsValidationFactory.getInstance(cssElementStyleNodeList));
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('No Style Present', TJava.Box(Self), commonStrings_.GET_INSTANCE);
        end;
        Exit(TBasicArrayListD.Create());
end;
    

// throws Exception
class function TStylesValidationFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): TBasicArrayList;
var
  stylesDocument: TDocument;
begin
        stylesDocument := TDocument(TJava.ToObject(hashMap_.get(TJava.Box(TNameSpaceRequestParamData.DOCUMENT))));
        Exit(TStylesValidationFactory.getInstance().getInstance(stylesDocument));
end;

initialization
  {AB:INITIALIZATION}
  TStylesValidationFactory.instance := TStylesValidationFactory.Create();
  {AB:END}

end.

