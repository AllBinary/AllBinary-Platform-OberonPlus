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
// package org.allbinary.logic.visual.transform.template.customizer.hedges.heading
unit HeadingValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Validation, LogoValidation, TitleValidation, Document, Node;

type
  {AB:TYPES}
  THeadingValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    title: TTitleValidation;
    logo: TLogoValidation;
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
  HeadingData, DomSearchHelper, StringMaker, LogoData, TitleData, NodeList;


{AB:CODE}

procedure THeadingValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function THeadingValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THeadingValidation.Create;
begin
    inherited Create;
    InitFields;
        Self.title := TTitleValidation.Create();
        Self.logo := TLogoValidation.Create();
end;
    

constructor THeadingValidation.Create(document_: TDocument);
var
  headingNodeList: TNodeList;
  titleNode: TNode;
  logoNode: TNode;
begin
    inherited Create;
    InitFields;
        headingNodeList := document_.getElementsByTagName(THeadingData.NAME);
        titleNode := TDomSearchHelper.getNode(TTitleData.getInstance().NAME, headingNodeList.item(0).getChildNodes());
        logoNode := TDomSearchHelper.getNode(TLogoData.getInstance().NAME, headingNodeList.item(0).getChildNodes());
        Self.title := TTitleValidation.Create(titleNode);
        Self.logo := TLogoValidation.Create(logoNode);
end;
    

constructor THeadingValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap_);
end;
    

// throws Exception
procedure THeadingValidation.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        Self.title := TTitleValidation.Create(hashMap_);
        Self.logo := TLogoValidation.Create(hashMap_);
end;
    

function THeadingValidation.isValid: Boolean;
var
  valid: Boolean;
  titleValid: Boolean;
  logoValid: Boolean;
begin
        try
            valid := True;
            titleValid := True;
            logoValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            if not ((Self.title.isValid())) then begin
                titleValid := False;
            end;
            if not ((Self.logo.isValid())) then begin
                logoValid := False;
            end else begin
                Self.logo.processLogoFile();
            end;
            if (not ((titleValid))) and (not ((logoValid))) then begin
                valid := False;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('HeadingValidation: ' + BoolToStr(valid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
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
    

function THeadingValidation.validationInfo: string;
var
  valid: Boolean;
  titleValid: Boolean;
  logoValid: Boolean;
  stringBuffer: TStringMaker;
begin
        try
            valid := True;
            titleValid := True;
            logoValid := True;
            stringBuffer := TStringMaker.Create();
            if not ((Self.title.isValid())) then begin
                titleValid := False;
            end;
            if not ((Self.logo.isValid())) then begin
                logoValid := False;
            end;
            if (not ((titleValid))) and (not ((logoValid))) then begin
                valid := False;
            end;
            if not ((valid)) then begin
                stringBuffer.append('Include a title and/or logo for the header.');
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
    

function THeadingValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function THeadingValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function THeadingValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(THeadingData.NAME);
        node_.appendChild(Self.logo.toXmlNode(document_));
        node_.appendChild(Self.title.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

