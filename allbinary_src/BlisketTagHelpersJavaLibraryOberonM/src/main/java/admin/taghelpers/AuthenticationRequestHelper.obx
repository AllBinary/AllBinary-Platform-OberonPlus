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
// package admin.taghelpers
unit AuthenticationRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, WeblisketSession, LogUtil, AbeClientInformationInterface, TagHelper;

type
  {AB:TYPES}
  TAuthenticationRequestHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    weblisketSession: TWeblisketSession;
    request: THttpServletRequest;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest); overload;
        function generateNewPassword: string;
        function newPassword: Boolean; virtual;
        function changePassword: Boolean; virtual;
        function isRoleValid(userName: string; password_: string; roles: TBasicArrayList): Boolean; virtual;
  end;

implementation
uses
  BasicArrayListD, UserData, UserInterface, Password, BasicUserRole, UserEntityFactory, UserEntityInterface, GLOBALS2, WeblisketSessionData, WeblisketSessionInterface, NewPasswordEmail, StringMaker, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TAuthenticationRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
end;
    

constructor TAuthenticationRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
end;
    

constructor TAuthenticationRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, httpServletRequest_);
        Self.request := httpServletRequest_;
end;
    

// throws Exception
function TAuthenticationRequestHelper.generateNewPassword: string;
var
  startIndex: Integer;
begin
        if ((Self.weblisketSession) <> (nil)) and (not TJava.IsNull(Self.weblisketSession.getId())) then begin
            startIndex := Self.weblisketSession.getId().length();
            if (startIndex) >= (8) then begin
                Exit(Self.weblisketSession.getId().substring((startIndex) - (8)));
            end else begin
                raise SysUtils.Exception.Create('Error Generating New Password');
            end;
        end else begin
            raise SysUtils.Exception.Create('No Session Available For Generating New Password');
        end;
end;
    

function TAuthenticationRequestHelper.newPassword: Boolean;
var
  userName: string;
  email: string;
  userEntityInterface_: IUserEntityInterface;
  userInterface_: IUserInterface;
  newPassword: string;
  newPasswordHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            userName := Self.request.getParameter(TWeblisketSessionData.REMOVABLEUSERNAME);
            email := Self.request.getParameter(TUserData.MAINEMAIL);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF('Generating New Password For: ' + userName, TJava.Box(Self), 'newPassword()');
            end;
            userEntityInterface_ := TUserEntityFactory.getInstance();
            userInterface_ := userEntityInterface_.getUser(userName);
            if (userInterface_.getMainEmail().compareTo(email)) <> (0) then begin
                if (not TJava.IsNull(userInterface_.getSecondaryEmail())) and ((userInterface_.getSecondaryEmail().compareTo(email)) <> (0)) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                        Self.logUtil.putF('Requested Email Is Not In User Profile', TJava.Box(Self), 'newPassword()');
                    end;
                    Exit(False);
                end;
            end;
            newPassword := Self.generateNewPassword();
            userInterface_.setPassword(newPassword);
            newPasswordHashMap := userInterface_.toPasswordHashMap();
            TUserEntityFactory.getInstance().update(userName, newPasswordHashMap);
            TNewPasswordEmail.Create(Self.abeClientInformation, userInterface_, newPassword).process();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF('Generated New Password For: ' + userName, TJava.Box(Self), 'newPassword()');
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'newPassword()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TAuthenticationRequestHelper.changePassword: Boolean;
var
  userName: string;
  passwordString: string;
  newPassword: string;
  newReenteredPassword: string;
  password_: TPassword;
  sessionPassword: string;
  userEntityInterface_: IUserEntityInterface;
  userInterface_: IUserInterface;
  login: string;
  newPasswordHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            userName := Self.request.getParameter(TWeblisketSessionData.REMOVABLEUSERNAME);
            passwordString := Self.request.getParameter(TWeblisketSessionData.REMOVABLEPASSWORD);
            newPassword := Self.request.getParameter(TWeblisketSessionData.REMOVABLENEWPASSWORD);
            newReenteredPassword := Self.request.getParameter(TWeblisketSessionData.REMOVABLEREENTERNEWPASSWORD);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF('Changing Password For User: ' + userName, TJava.Box(Self), 'changePassword()');
            end;
            password_ := TPassword.Create(newPassword);
            if not ((password_.isValid())) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                    Self.logUtil.putF('New Password Is Not Valid', TJava.Box(Self), 'changePassword()');
                end;
                Exit(False);
            end;
            if (CompareStr(newPassword, newReenteredPassword)) <> (0) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                    Self.logUtil.putF('New Password Fields Do Not Match', TJava.Box(Self), 'changePassword()');
                end;
                Exit(False);
            end;
            sessionPassword := Self.weblisketSession.getPassword();
            userEntityInterface_ := TUserEntityFactory.getInstance();
            userInterface_ := userEntityInterface_.getUser(userName);
            login := userEntityInterface_.login(userName, passwordString);
            if (CompareStr(login, GLOBALS2.LOGINSUCCESS)) = (0) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                    Self.logUtil.putF('Authentication Successful', TJava.Box(Self), 'changePassword()');
                end;
                newPasswordHashMap := password_.toHashMap(nil);
                TUserEntityFactory.getInstance().update(userName, newPasswordHashMap);
                TNewPasswordEmail.Create(Self.abeClientInformation, userInterface_, newPassword).process();
                Exit(True);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF('Authentication Failed', TJava.Box(Self), 'changePassword()');
            end;
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put('Authentication Failed', TJava.Box(Self), 'changePassword()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TAuthenticationRequestHelper.isRoleValid(userName: string; password_: string; roles: TBasicArrayList): Boolean;
var
  userEntityInterface_: IUserEntityInterface;
  userInterface_: IUserInterface;
  basicUserRoleArray: TArray<TObject>;
  size: Integer;
  nextRole: TBasicUserRole;
  index: Integer;
  stringBuffer: TStringMaker;
begin
        try
            userEntityInterface_ := TUserEntityFactory.getInstance();
            userInterface_ := userEntityInterface_.getUser(userName);
            if TJava.IsNull(userInterface_.getRole()) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                    Self.logUtil.putF('Role is null: ' + TJava.ToString(userInterface_.getRole()) + ' Valid Roles: ' + roles.toString(), TJava.Box(Self), 'isRoleValid()');
                end;
                Exit(False);
            end;
            basicUserRoleArray := roles.toArray();
            size := System.Length(basicUserRoleArray);
            for index := 0 to size - 1 do begin
                nextRole := TBasicUserRole(TJava.ToObject(basicUserRoleArray[index]));
                if TJava.Equals(userInterface_.getRole().getBasicUserRole(), nextRole) then begin
                    userInterface_.validateSession((TJava.ToObject(Self.weblisketSession) as IWeblisketSessionInterface));
                    Self.request.removeAttribute(TWeblisketSessionData.REMOVABLEUSERNAME);
                    Self.request.removeAttribute(TWeblisketSessionData.REMOVABLEPASSWORD);
                    Exit(True);
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Role is not valid: ');
                stringBuffer.append(userInterface_.getRole().toString());
                stringBuffer.append(' Valid Roles: ');
                stringBuffer.append(roles.toString());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'isRoleValid()');
            end;
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isRoleValid()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

