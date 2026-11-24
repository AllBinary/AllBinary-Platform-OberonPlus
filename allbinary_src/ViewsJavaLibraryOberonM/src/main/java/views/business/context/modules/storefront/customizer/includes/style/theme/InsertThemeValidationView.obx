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
// package views.business.context.modules.storefront.customizer.includes.style.theme
unit InsertThemeValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, ThemeCustomizerView;

type
  {AB:TYPES}
  TInsertThemeValidationView = class(TThemeCustomizerView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    requestHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlDoc: TDocument; virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function view: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  DomNodeInterface, NameSpaceRequestParams, StringMaker, ThemeValidation, CustomizerUtil, StoreCustomizerComponentUtil;


{AB:CODE}

procedure TInsertThemeValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TInsertThemeValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInsertThemeValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), 'started');
        end;
        Self.requestHashMap := TNameSpaceRequestParams.Create(Self.getPageContext()).toHashMap();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), 'begin loading theme');
        end;
end;
    

// throws Exception
function TInsertThemeValidationView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertThemeValidationView.isValid: Boolean;
var
  isValid: Boolean;
  themeValidation_: TThemeValidation;
begin
        try
            isValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Started Validation', TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            themeValidation_ := TThemeValidation.Create(Self.getTransformInfoInterface(), Self.requestHashMap);
            if (themeValidation_.isValid()) = (False) then begin
                isValid := False;
            end;
            Self.validationInterface := themeValidation_.getCssStyleValidation();
            isValid := Self.validationInterface.isValid();
            if (isValid) = (True) then begin
                TCustomizerUtil.getInstance().insert(Self.getTransformInfoInterface(), (TJava.ToObject(Self.validationInterface) as IDomNodeInterface));
            end;
            Exit(isValid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInsertThemeValidationView.validationInfo: string;
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
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

function TInsertThemeValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TInsertThemeValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TInsertThemeValidationView.view: string;
begin
        try
            Exit(TStoreCustomizerComponentUtil.getInstance().generate(Self.abeClientInformation, Self.getTransformInfoInterface()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TInsertThemeValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

