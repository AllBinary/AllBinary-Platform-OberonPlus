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
// package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail
unit CssStyleValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, Validation, Document, Node;

type
  {AB:TYPES}
  TCssStyleValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    cssStyleElementVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(document_: TDocument); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, ValidationInterface, StringMaker, StyleData, StylesData, StylesValidationFactory;


{AB:CODE}

procedure TCssStyleValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TCssStyleValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCssStyleValidation.Create;
begin
    inherited Create;
    InitFields;
        Self.cssStyleElementVector := TBasicArrayListD.Create();
end;
    

constructor TCssStyleValidation.Create(document_: TDocument);
begin
    inherited Create;
    InitFields;
        Self.cssStyleElementVector := TStylesValidationFactory.getInstance().getInstance(document_);
end;
    

constructor TCssStyleValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.cssStyleElementVector := TStylesValidationFactory.getInstance(hashMap_);
end;
    

function TCssStyleValidation.isValid: Boolean;
var
  isValid: Boolean;
  size: Integer;
  styleValidationInterface: IValidationInterface;
  i: Integer;
begin
        try
            isValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            size := Self.cssStyleElementVector.size();
            for i := 0 to size - 1 do begin
                styleValidationInterface := (TJava.ToObject(Self.cssStyleElementVector.get(i)) as IValidationInterface);
                if not ((styleValidationInterface.isValid())) then begin
                    isValid := False;
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('End: ' + BoolToStr(isValid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
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
    

function TCssStyleValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
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
    

function TCssStyleValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TCssStyleValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TCssStyleValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  styleNode: TNode;
  size: Integer;
  styleDomNodeInterface: IDomNodeInterface;
  i: Integer;
begin
        node_ := document_.createElement(TStylesData.getInstance().NAME);
        styleNode := document_.createElement(TStyleData.getInstance().NAME);
        node_.appendChild(styleNode);
        size := Self.cssStyleElementVector.size();
        for i := 0 to size - 1 do begin
            styleDomNodeInterface := (TJava.ToObject(Self.cssStyleElementVector.get(i)) as IDomNodeInterface);
            styleNode.appendChild(styleDomNodeInterface.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

