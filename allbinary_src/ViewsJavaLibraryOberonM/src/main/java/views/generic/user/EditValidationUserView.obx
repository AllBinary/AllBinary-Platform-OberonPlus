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
// package views.generic.user
unit EditValidationUserView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, UserView;

type
  {AB:TYPES}
  TEditValidationUserView = class(TUserView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    userName: string;
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
  UserName, UserEntityFactory, StringMaker;


{AB:CODE}

procedure TEditValidationUserView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TEditValidationUserView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEditValidationUserView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.userName := Self.getWeblisketSession().getUserName();
end;
    

function TEditValidationUserView.isValid: Boolean;
begin
        try
            if (TUserName.getInstance().isValid(Self.userName)) = (True) then begin
                Self.user := TUserEntityFactory.getInstance().getUser(Self.userName);
                if (Self.user) = (nil) then begin
                    Exit(False);
                end;
            end else begin
                Exit(False);
            end;
            Exit(Self.user.isValid());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TEditValidationUserView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if TUserName.getInstance().isValid(Self.userName).booleanValue() then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('User Name is valid', TJava.Box(Self), 'validationInfo()');
                end;
                Self.user := TUserEntityFactory.getInstance().getUser(Self.userName);
                if (Self.user) = (nil) then begin
                    stringBuffer.append('User does not exist.<br />');
                    Exit(stringBuffer.toString());
                end;
            end else begin
                stringBuffer.append('User Name is not valid.<br />');
                Exit(stringBuffer.toString());
            end;
            if (Self.user.isValid()) = (False) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('User exists but is invalid - Probably manually modified', TJava.Box(Self), 'validationInfo()');
                end;
                stringBuffer.append('User data is not valid - Please call administrator.<br />');
                stringBuffer.append(Self.user.validationInfo());
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
    

function TEditValidationUserView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TEditValidationUserView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TEditValidationUserView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

