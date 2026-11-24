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
// package org.allbinary.logic.visual.dhtml.style.css.property.font
unit FontFamilyValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationInterface, Document, Node, FontFamilyView;

type
  {AB:TYPES}
  TFontFamilyValidation = class(TFontFamilyView, IValidationInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TFontFamilyValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TFontFamilyValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFontFamilyValidation.Create;
begin
        inherited Create();
        InitFields;
end;
    

constructor TFontFamilyValidation.Create(node_: TNode);
begin
        inherited Create(node_);
        InitFields;
end;
    

// throws Exception
function TFontFamilyValidation.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            valid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('FontFamilyValidation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('CssValidation: ' + BoolToStr(valid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate data', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws Exception
function TFontFamilyValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Css Font Family Property Validation Error');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation info error', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Data');
            end;
        end;
end;
    

// throws Exception
function TFontFamilyValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TFontFamilyValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

