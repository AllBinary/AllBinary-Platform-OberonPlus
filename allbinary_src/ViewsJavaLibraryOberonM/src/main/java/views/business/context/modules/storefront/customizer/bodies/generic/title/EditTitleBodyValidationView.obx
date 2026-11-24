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
// package views.business.context.modules.storefront.customizer.bodies.generic.title
unit EditTitleBodyValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, TitleBodyCustomizerView;

type
  {AB:TYPES}
  TEditTitleBodyValidationView = class(TTitleBodyCustomizerView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  StringMaker, TitleBodyValidation, CustomizerUtil;


{AB:CODE}

procedure TEditTitleBodyValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TEditTitleBodyValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEditTitleBodyValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TEditTitleBodyValidationView.isValid: Boolean;
var
  document_: TDocument;
  isValid: Boolean;
begin
        try
            document_ := TCustomizerUtil.getInstance().getViewDataForComponentsInObjectConfig(Self.getTransformInfoInterface());
            Self.titleBody := TTitleBodyValidation.Create(document_);
            isValid := Self.titleBody.isValid();
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
    

function TEditTitleBodyValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.titleBody.validationInfo());
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
    

function TEditTitleBodyValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TEditTitleBodyValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TEditTitleBodyValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

