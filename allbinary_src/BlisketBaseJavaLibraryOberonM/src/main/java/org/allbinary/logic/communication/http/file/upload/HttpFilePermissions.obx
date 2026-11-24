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
// package org.allbinary.logic.communication.http.file.upload
unit HttpFilePermissions;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AbFile, AbPath, CommonStrings;

type
  {AB:TYPES}
  THttpFilePermissions = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    file_: TAbFile;
    userRoles: TBasicArrayList;
    procedure InitFields;
        constructor Create(fullPath: TAbPath);
        function isFile: Boolean; virtual;
        function getUserRoles: TBasicArrayList; virtual;
  end;

implementation
uses
  FileUploadData, BasicArrayListD, BasicUserRoleFactory, StdUtil;


{AB:CODE}

procedure THttpFilePermissions.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.userRoles := TBasicArrayListD.Create();
end;
    

constructor THttpFilePermissions.Create(fullPath: TAbPath);
begin
    inherited Create;
    InitFields;
        Self.file_ := TAbFile.createAbFileFromAbPath(TAbPath.Create(fullPath.toFileSystemString(), TFileUploadData.getInstance().FILE_));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
            Self.logUtil.putF('Loading Privileges: ' + TJava.ToString(fullPath.toFileSystemString()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        if Self.isFile() then begin
            Self.userRoles.add(TJava.Box(TBasicUserRoleFactory.getInstance().ADMINISTRATOR));
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
            Self.logUtil.putF('User Roles: ' + TJava.ToString(Self.userRoles), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

function THttpFilePermissions.isFile: Boolean;
begin
        Exit(Self.file_.isFile());
end;
    

function THttpFilePermissions.getUserRoles: TBasicArrayList;
begin
        Exit(Self.userRoles);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

