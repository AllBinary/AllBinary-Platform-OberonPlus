{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 leIIgal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.visual.transform.template.customizer.bodies.title
unit TitleBodyValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Validation, TitleNotRequiredValidation, Document, Node;

type
  {AB:TYPES}
  TTitleBodyValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    body: string;
    titleValidation: TTitleNotRequiredValidation;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(document_: TDocument); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        procedure getFormData(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, AbSqlData, StringMaker, StringUtil, BodyData, TitleData, NodeList;


{AB:CODE}

procedure TTitleBodyValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TTitleBodyValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTitleBodyValidation.Create;
var
  stringUtil_: TStringUtil;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        stringUtil_ := TStringUtil.getInstance();
        Self.body := stringUtil_.EMPTY_STRING;
        Self.titleValidation := TTitleNotRequiredValidation.Create();
end;
    

constructor TTitleBodyValidation.Create(document_: TDocument);
var
  nodeList_: TNodeList;
  aBodyNode: TNode;
  aBodyValueNode: TNode;
  titleNode: TNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), 'Constructor(document)');
        end;
        nodeList_ := document_.getElementsByTagName(TBodyData.getInstance().NAME);
        for index := 0 to nodeList_.getLength() - 1 do begin
            aBodyNode := nodeList_.item(index);
            aBodyValueNode := TDomSearchHelper.getNode(TDomData.VALUE, aBodyNode.getChildNodes());
            Self.body := TDomNodeHelper.getTextNodeValue(aBodyValueNode);
            titleNode := TDomSearchHelper.getNode(TTitleData.getInstance().NAME, aBodyNode.getChildNodes());
            Self.titleValidation := TTitleNotRequiredValidation.Create(titleNode);
            if (index) > (1) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('To Many Body Nodes', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
                end;
            end;
        end;
end;
    

constructor TTitleBodyValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'Constructor(hashmap)');
        end;
        Self.getFormData(hashMap_);
end;
    

// throws Exception
procedure TTitleBodyValidation.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        Self.body := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TBodyData.getInstance().NAME))));
        Self.titleValidation := TTitleNotRequiredValidation.Create(hashMap_);
end;
    

function TTitleBodyValidation.isValid: Boolean;
var
  isValid: Boolean;
begin
        try
            isValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TitleBodyValidation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            if not (nil.isValidNotRequired(Self.body, TBodyData.getInstance().MIN, TAbSqlData.MAXBLOB)) then begin
                isValid := False;
            end;
            if not ((Self.titleValidation.isValid())) then begin
                isValid := False;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TitleBodyValidation: ' + BoolToStr(isValid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(isValid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TTitleBodyValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            begin
                stringBuffer.append('Error: Data submitted is < ');
                stringBuffer.appendint(Integer(Trunc(TBodyData.getInstance().MIN)));
                stringBuffer.append(' or > ');
                stringBuffer.appendint(Integer(Trunc(TAbSqlData.MAXBLOB)));
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TTitleBodyValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TTitleBodyValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TTitleBodyValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Title Body: ' + Self.body, TJava.Box(Self), 'toXmlNode(document)');
        end;
        node_ := TModDomHelper.createNameValueNodes(document_, TBodyData.getInstance().NAME, Self.body);
        node_.appendChild(Self.titleValidation.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

