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
// package org.allbinary.logic.visual.transform.template.customizer.page
unit PageValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Validation, TitleValidation, Document, Node;

type
  {AB:TYPES}
  TPageValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    title: TTitleValidation;
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
  PageData, DomSearchHelper, StringMaker, TitleData;


{AB:CODE}

procedure TPageValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TPageValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPageValidation.Create;
begin
    inherited Create;
    InitFields;
        Self.title := TTitleValidation.Create();
end;
    

constructor TPageValidation.Create(document_: TDocument);
var
  node_: TNode;
begin
    inherited Create;
    InitFields;
        node_ := TDomSearchHelper.getNode(TTitleData.getInstance().NAME, document_.getElementsByTagName(TPageData.getInstance().NAME));
        Self.title := TTitleValidation.Create(node_);
end;
    

constructor TPageValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap_);
end;
    

procedure TPageValidation.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        Self.title := TTitleValidation.Create(hashMap_);
end;
    

function TPageValidation.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            valid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('PageValidation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            if not ((Self.title.isValid())) then begin
                valid := False;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('PageValidation: ' + BoolToStr(valid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
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
    

function TPageValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if not ((Self.title.isValid())) then begin
                stringBuffer.append(Self.title.validationInfo());
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
    

function TPageValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TPageValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TPageValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(TPageData.getInstance().NAME);
        node_.appendChild(Self.title.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

