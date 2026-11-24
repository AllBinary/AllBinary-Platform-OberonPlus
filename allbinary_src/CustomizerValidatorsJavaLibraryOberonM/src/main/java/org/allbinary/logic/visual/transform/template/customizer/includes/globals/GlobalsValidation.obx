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
// package org.allbinary.logic.visual.transform.template.customizer.includes.globals
unit GlobalsValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, DomNodeInterface, LogUtil, Validation, Document, Node;

type
  {AB:TYPES}
  TGlobalsValidation = class(TValidation, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    storeFrontInterface: IStoreFrontInterface;
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
  GlobalsData, StoreFrontFactory, StoreFrontView, StringMaker, CommonStrings;


{AB:CODE}

procedure TGlobalsValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TGlobalsValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGlobalsValidation.Create(storeName: string);
begin
    inherited Create;
    InitFields;
        Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
end;
    

constructor TGlobalsValidation.Create(document_: TDocument);
begin
    inherited Create;
    InitFields;
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;
    

function TGlobalsValidation.isValid: Boolean;
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
    

function TGlobalsValidation.validationInfo: string;
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
    

function TGlobalsValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TGlobalsValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TGlobalsValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(TGlobalsData.NAME);
        node_.appendChild(TStoreFrontView.Create(Self.storeFrontInterface).toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

