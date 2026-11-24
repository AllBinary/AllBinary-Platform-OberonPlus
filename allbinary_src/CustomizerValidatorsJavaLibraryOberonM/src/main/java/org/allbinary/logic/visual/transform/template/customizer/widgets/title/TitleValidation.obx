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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.title
unit TitleValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationInterface, Document, Node, TitleView;

type
  {AB:TYPES}
  TTitleValidation = class(TTitleView, IValidationInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  TitleData, StringMaker;


{AB:CODE}

procedure TTitleValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TTitleValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTitleValidation.Create;
begin
        inherited Create();
        InitFields;
end;
    

constructor TTitleValidation.Create(node_: TNode);
begin
        inherited Create(node_);
        InitFields;
end;
    

constructor TTitleValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(hashMap_);
        InitFields;
end;
    

function TTitleValidation.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TitleValidation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            valid := True;
            if not (nil.isValidRequired(Self.getTitle(), 1, TTitleData.getInstance().MAXLEN)) then begin
                valid := False;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TitleValidation: ' + BoolToStr(valid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TTitleValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Title is not valid.');
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
    

function TTitleValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TTitleValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

