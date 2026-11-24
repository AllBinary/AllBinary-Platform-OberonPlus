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
unit UsersValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, UsersView;

type
  {AB:TYPES}
  TUsersValidationView = class(TUsersView, IValidationComponentInterface)
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
  UserRole, UserRoleB, UserRoleData, UserEntityFactory, TransformInfoHttpInterface;


{AB:CODE}

procedure TUsersValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TUsersValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUsersValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  role: string;
  userRole_: TUserRole;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        role := TJava.UnboxString(TJava.ToObject(httpTransformInfoInterface.getPropertiesHashMap().get(TJava.ToString(TUserRoleData.NAME))));
        userRole_ := TUserRoleB.getRole(role);
        Self.userVector := TUserEntityFactory.getInstance().getUsersWithRole(userRole_);
end;
    

function TUsersValidationView.isValid: Boolean;
begin
        try
            if (Self.userVector.size()) > (0) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TUsersValidationView.validationInfo: string;
begin
        try
            Exit('No Users');
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

function TUsersValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TUsersValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TUsersValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

