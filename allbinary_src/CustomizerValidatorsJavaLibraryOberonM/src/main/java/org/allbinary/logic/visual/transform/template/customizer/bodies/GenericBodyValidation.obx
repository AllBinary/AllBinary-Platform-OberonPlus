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
// package org.allbinary.logic.visual.transform.template.customizer.bodies
unit GenericBodyValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Validation, Document, Node;

type
  {AB:TYPES}
  TGenericBodyValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    body: string;
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
  BodyData, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, AbSqlData, StringMaker, StringUtil, NodeList;


{AB:CODE}

procedure TGenericBodyValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TGenericBodyValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericBodyValidation.Create;
begin
    inherited Create;
    InitFields;
        Self.body := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TGenericBodyValidation.Create(document_: TDocument);
var
  nodeList_: TNodeList;
  aBodyNode: TNode;
  aBodyValueNode: TNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        nodeList_ := document_.getElementsByTagName(TBodyData.getInstance().NAME);
        for index := 0 to nodeList_.getLength() - 1 do begin
            aBodyNode := nodeList_.item(index);
            aBodyValueNode := TDomSearchHelper.getNode(TDomData.VALUE, aBodyNode.getChildNodes());
            Self.body := TDomNodeHelper.getTextNodeValue(aBodyValueNode);
        end;
end;
    

constructor TGenericBodyValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap_);
end;
    

// throws Exception
procedure TGenericBodyValidation.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        Self.body := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TBodyData.getInstance().NAME))));
end;
    

function TGenericBodyValidation.isValid: Boolean;
var
  isValid: Boolean;
begin
        try
            isValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            if not (nil.isValidNotRequired(Self.body, TBodyData.getInstance().MIN, TAbSqlData.MAXBLOB)) then begin
                isValid := False;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('BodyValidation: ' + BoolToStr(isValid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
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
    

function TGenericBodyValidation.validationInfo: string;
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
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TGenericBodyValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TGenericBodyValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TGenericBodyValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createNameValueNodes(document_, TBodyData.getInstance().NAME, Self.body);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

