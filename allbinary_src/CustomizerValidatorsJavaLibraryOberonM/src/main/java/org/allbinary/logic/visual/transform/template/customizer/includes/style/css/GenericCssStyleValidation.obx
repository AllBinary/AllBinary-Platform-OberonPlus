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
// package org.allbinary.logic.visual.transform.template.customizer.includes.style.css
unit GenericCssStyleValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Validation, Document, Node;

type
  {AB:TYPES}
  TGenericCssStyleValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
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
  ModDomHelper, StringMaker, StringUtil, StylesData, BodyData, NodeList;


{AB:CODE}

procedure TGenericCssStyleValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TGenericCssStyleValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericCssStyleValidation.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TGenericCssStyleValidation.Create(document_: TDocument);
var
  nodeList_: TNodeList;
begin
    inherited Create;
    InitFields;
        nodeList_ := document_.getElementsByTagName(TStylesData.getInstance().NAME);
end;
    

constructor TGenericCssStyleValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap_);
end;
    

// throws Exception
procedure TGenericCssStyleValidation.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
begin
end;
    

function TGenericCssStyleValidation.isValid: Boolean;
var
  isValid: Boolean;
begin
        try
            isValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.IS_VALID);
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
    

function TGenericCssStyleValidation.validationInfo: string;
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
    

function TGenericCssStyleValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TGenericCssStyleValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TGenericCssStyleValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createNameValueNodes(document_, TBodyData.getInstance().NAME, TStringUtil.getInstance().EMPTY_STRING);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

