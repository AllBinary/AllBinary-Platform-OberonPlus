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
// package views.business.context.modules.storefront.customizer.hedges.header
unit NewHeaderValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, TopBarView;

type
  {AB:TYPES}
  TNewHeaderValidationView = class(TTopBarView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlDoc: TDocument; virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  DomNodeInterface, StringMaker, HeadingValidation, CustomizerUtil;


{AB:CODE}

procedure TNewHeaderValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TNewHeaderValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNewHeaderValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.heading := THeadingValidation.Create();
end;
    

// throws Exception
function TNewHeaderValidationView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TNewHeaderValidationView.isValid: Boolean;
begin
        try
            TCustomizerUtil.getInstance().insert(Self.getTransformInfoInterface(), (TJava.ToObject(Self) as IDomNodeInterface));
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TNewHeaderValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.heading.validationInfo());
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
    

function TNewHeaderValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TNewHeaderValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TNewHeaderValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

