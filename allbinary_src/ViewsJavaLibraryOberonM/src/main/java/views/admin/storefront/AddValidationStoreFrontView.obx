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
// package views.admin.storefront
unit AddValidationStoreFrontView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, HttpContextView;

type
  {AB:TYPES}
  TAddValidationStoreFrontView = class(THttpContextView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    newStoreFrontInterface: IStoreFrontInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function getStoreViewsPath: string;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function view: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  StoreFront, StoreFrontFactory, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, AbFile, AbPath, StringMaker, StringUtil;


{AB:CODE}

procedure TAddValidationStoreFrontView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TAddValidationStoreFrontView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAddValidationStoreFrontView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.newStoreFrontInterface := (TJava.ToObject(TStoreFront.Create(THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest())))) as IStoreFrontInterface);
        if (Self.newStoreFrontInterface.getName()) = ('') then begin
            Self.newStoreFrontInterface.setName(Self.getWeblisketSession().getStoreName());
        end;
end;
    

function TAddValidationStoreFrontView.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            valid := True;
            if (Self.newStoreFrontInterface.isValid()) = (False) then begin
                valid := False;
            end;
            if not TJava.IsNull(TStoreFrontFactory.getInstance(Self.newStoreFrontInterface.getName())) then begin
                valid := False;
            end;
            if TAbFile.createAbFileFromAbPath(TAbPath.Create(Self.getStoreViewsPath(), TStringUtil.getInstance().EMPTY_STRING)).isFile() then begin
                valid := False;
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
    

// throws Exception
function TAddValidationStoreFrontView.getStoreViewsPath: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(Self.newStoreFrontInterface.getName());
        Exit(stringBuffer.toString());
end;
    

function TAddValidationStoreFrontView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if (Self.newStoreFrontInterface.isValid()) = (False) then begin
                stringBuffer.append(Self.newStoreFrontInterface.validationInfo());
            end;
            if not TJava.IsNull(TStoreFrontFactory.getInstance(Self.newStoreFrontInterface.getName())) then begin
                stringBuffer.append('Store name already used<br/>');
            end;
            if TAbFile.createAbFileFromAbPath(TAbPath.Create(Self.getStoreViewsPath(), TStringUtil.getInstance().EMPTY_STRING)).isFile() then begin
                stringBuffer.append('Store name clashes with template name<br/>');
            end;
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
    

function TAddValidationStoreFrontView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TAddValidationStoreFrontView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TAddValidationStoreFrontView.view: string;
begin
        Exit(Self.views.ValidationOnlyTempUtil.getInstance().view(Self));
end;
    

// throws Exception
function TAddValidationStoreFrontView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

