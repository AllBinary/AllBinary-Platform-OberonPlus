{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  II
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.visual.transform.template.customizer.includes.meta
unit MetasValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, DomNodeInterface, LogUtil, Validation, Document, Node;

type
  {AB:TYPES}
  TMetasValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    storeFrontInterface: IStoreFrontInterface;
    metaValidationVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeName: string); overload;
        constructor Create(document_: TDocument); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  MetaValidation, BasicArrayListD, StoreFrontFactory, StdUtil, StringMaker, HtmlMetaAttributeDataFactory, HtmlMetaAttributeValuesData, HtmlMetasData, CommonStrings;


{AB:CODE}

procedure TMetasValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TMetasValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMetasValidation.Create(storeName: string);
var
  contentValue: string;
  keywordsMetaValidation: TMetaValidation;
  abstractMetaValidation: TMetaValidation;
  descriptionMetaValidation: TMetaValidation;
begin
    inherited Create;
    InitFields;
        Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        Self.metaValidationVector := TBasicArrayListD.Create();
        contentValue := Self.storeFrontInterface.getName() + ' E-Commerce Site';
        keywordsMetaValidation := TMetaValidation.Create(THtmlMetaAttributeDataFactory.getInstance().NAME, 'Keywords', THtmlMetaAttributeValuesData.getInstance().KEYWORDS, contentValue);
        abstractMetaValidation := TMetaValidation.Create(THtmlMetaAttributeDataFactory.getInstance().NAME, 'Abstract', THtmlMetaAttributeValuesData.getInstance().ABSTRACT_, contentValue);
        descriptionMetaValidation := TMetaValidation.Create(THtmlMetaAttributeDataFactory.getInstance().NAME, 'Description', THtmlMetaAttributeValuesData.getInstance().DESCRIPTION, contentValue);
        Self.metaValidationVector.add(TJava.Box(keywordsMetaValidation));
        Self.metaValidationVector.add(TJava.Box(abstractMetaValidation));
        Self.metaValidationVector.add(TJava.Box(descriptionMetaValidation));
end;
    

constructor TMetasValidation.Create(document_: TDocument);
begin
    inherited Create;
    InitFields;
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;
    

function TMetasValidation.isValid: Boolean;
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
    

function TMetasValidation.validationInfo: string;
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
    

function TMetasValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TMetasValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TMetasValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  metaArray: TArray<TMetaValidation>;
  size: Integer;
  metaValidation_: TMetaValidation;
  i: Integer;
begin
        node_ := document_.createElement(THtmlMetasData.getInstance().NAME);
        metaArray := TJava.UnboxArray<TMetaValidation>(TJava.ToObject(Self.metaValidationVector.toArrayType(TJava.NewArray<TMetaValidation>(Self.metaValidationVector.size()))));
        size := System.Length(metaArray);
        for i := 0 to size - 1 do begin
            metaValidation_ := metaArray[i];
            node_.appendChild(metaValidation_.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

