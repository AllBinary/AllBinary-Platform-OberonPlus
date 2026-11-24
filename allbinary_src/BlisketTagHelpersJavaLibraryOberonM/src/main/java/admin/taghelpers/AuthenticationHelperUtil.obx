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
unit AuthenticationHelperUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AuthenticationHelper;

type
  {AB:TYPES}
  TAuthenticationHelperUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TAuthenticationHelperUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAuthenticationHelperUtil; static;
        function isAuthorized(authenticationHelper_: TAuthenticationHelper; filePath: string): Boolean;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, BasicUserRole, UserRole, URLGLOBALS, HttpFilePermissions, HttpRequestUtil, AbPath, StringUtil, CommonLabels;


{AB:CODE}

procedure TAuthenticationHelperUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TAuthenticationHelperUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAuthenticationHelperUtil.getInstance: TAuthenticationHelperUtil;
begin
        Exit(TAuthenticationHelperUtil.instance);
end;
    

// throws Exception
function TAuthenticationHelperUtil.isAuthorized(authenticationHelper_: TAuthenticationHelper; filePath: string): Boolean;
var
  endIndex: Integer;
  fullPath: TAbPath;
  downloadFilePermissions: THttpFilePermissions;
  userRoles: TBasicArrayList;
  userRole_: TUserRole;
  basicUserRole_: TBasicUserRole;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
            Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START) + filePath, TJava.Box(Self), 'isAuthorized()');
        end;
        endIndex := THttpRequestUtil.getInstance().getLastSeparatorIndex(filePath);
        fullPath := TAbPath.Create(TJava.ToString(TURLGLOBALS.getWebappPath()) + Copy(filePath, (0) + 1, (endIndex) - (0)), TStringUtil.getInstance().EMPTY_STRING);
        downloadFilePermissions := THttpFilePermissions.Create(fullPath);
        userRoles := downloadFilePermissions.getUserRoles();
        userRole_ := authenticationHelper_.getRole();
        basicUserRole_ := userRole_.getBasicUserRole();
        if userRoles.contains(TJava.Box(basicUserRole_)) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Authorized', TJava.Box(Self), 'isAuthorized()');
            end;
            Exit(True);
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Not Authorized: ' + basicUserRole_.toString(), TJava.Box(Self), 'isAuthorized()');
            end;
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAuthenticationHelperUtil.instance := TAuthenticationHelperUtil.Create();
  {AB:END}

end.

