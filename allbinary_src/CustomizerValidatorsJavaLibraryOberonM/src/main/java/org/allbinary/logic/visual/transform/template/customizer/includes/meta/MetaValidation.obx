{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  III
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.visual.transform.template.customizer.includes.meta
unit MetaValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Validation, HtmlMetaAttributeData, Document, Node;

type
  {AB:TYPES}
  TMetaValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    label_: string;
    name: string;
    httpEquiv: string;
    content: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(htmlMetaAttributeData_: THtmlMetaAttributeData; label_: string; attributeValue: string; contentValue: string); overload;
        constructor Create(document_: TDocument); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ModDomHelper, StdUtil, StringMaker, HtmlMetaAttributeDataFactory, HtmlMetaData, CommonStrings;


{AB:CODE}

procedure TMetaValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
end;

function TMetaValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMetaValidation.Create(htmlMetaAttributeData_: THtmlMetaAttributeData; label_: string; attributeValue: string; contentValue: string);
begin
    inherited Create;
    InitFields;
        Self.label_ := label_;
        if htmlMetaAttributeData_.equals(THtmlMetaAttributeDataFactory.getInstance().HTTP_EQUIV) then begin
            Self.httpEquiv := attributeValue;
        end else if htmlMetaAttributeData_.equals(THtmlMetaAttributeDataFactory.getInstance().NAME) then begin
            Self.name := attributeValue;
        end;
        Self.content := contentValue;
end;
    

constructor TMetaValidation.Create(document_: TDocument);
begin
    inherited Create;
    InitFields;
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;
    

function TMetaValidation.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            valid := True;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TMetaValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
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
    

function TMetaValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TMetaValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TMetaValidation.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  htmlMetaAttributeDataFactory_: THtmlMetaAttributeDataFactory;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        htmlMetaAttributeDataFactory_ := THtmlMetaAttributeDataFactory.getInstance();
        hashMap_.put(TJava.Box(THtmlMetaData.getInstance().LABEL_.toString()), TJava.Box(Self.label_));
        hashMap_.put(TJava.Box(htmlMetaAttributeDataFactory_.NAME.toString()), TJava.Box(Self.name));
        hashMap_.put(TJava.Box(htmlMetaAttributeDataFactory_.HTTP_EQUIV.toString()), TJava.Box(Self.httpEquiv));
        hashMap_.put(TJava.Box(htmlMetaAttributeDataFactory_.CONTENT.toString()), TJava.Box(Self.content));
        Exit(hashMap_);
end;
    

// throws Exception
function TMetaValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createNameValueNodes(document_, THtmlMetaData.getInstance().NAME.toString(), Self.toHashMap());
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

