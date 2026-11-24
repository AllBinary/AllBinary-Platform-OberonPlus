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
// package views.admin.user
unit AddValidationUserView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserInterface, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, HttpContextView;

type
  {AB:TYPES}
  TAddValidationUserView = class(THttpContextView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    user: IUserInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function view: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  NewUserFactory, UserEntityFactory, StringMaker;


{AB:CODE}

procedure TAddValidationUserView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TAddValidationUserView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAddValidationUserView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.user := TNewUserFactory.getInstance(transformInfoInterface_);
end;
    

function TAddValidationUserView.isValid: Boolean;
begin
        try
            if not TJava.IsNull(TUserEntityFactory.getInstance().getUser(Self.user.getUserName())) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('User already in existance.', TJava.Box(Self), Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            if (Self.user.isValid()) = (False) then begin
                Exit(False);
            end;
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
    

function TAddValidationUserView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if not TJava.IsNull(TUserEntityFactory.getInstance().getUser(Self.user.getUserName())) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('User already exists', TJava.Box(Self), 'validationInfo()');
                end;
                stringBuffer.append('The User Name you selected is already in use.<br/>  Please select another User Name.<br />');
            end;
            if (Self.user.isValid()) = (False) then begin
                stringBuffer.append(Self.user.validationInfo());
            end;
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
    

function TAddValidationUserView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TAddValidationUserView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TAddValidationUserView.view: string;
begin
        Exit(Self.views.ValidationOnlyTempUtil.getInstance().view(Self));
end;
    

// throws Exception
function TAddValidationUserView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

