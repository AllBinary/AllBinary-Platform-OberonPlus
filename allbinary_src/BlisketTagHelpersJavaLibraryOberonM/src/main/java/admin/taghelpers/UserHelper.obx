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
unit UserHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, LogUtil, Table;

type
  {AB:TYPES}
  TUserHelper = class(TTable)
  public
    logUtil: TLogUtil;
    hashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    request: THttpServletRequest;
    path: string;
    portion: TPortion;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function delete_: string; virtual;
        function insert: string; virtual;
        function update: string; virtual;
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, EntryData, NewUserFactory, UserData, UserInterface, UserName, UserEntityFactory, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, RequestParams, AbSqlTableUtil, StringMaker;


{AB:CODE}

procedure TUserHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
end;
    

constructor TUserHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.hashMap := hashMap_;
        Self.pageContext := pageContext_;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.path := (TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        Self.portion := TPortion.Create(hashMap_);
end;
    

function TUserHelper.delete_: string;
var
  requestHashMap: TJavaHashMap<TObject, TObject>;
  userName_: TUserName;
  stringBuffer: TStringMaker;
  success: string;
  error: string;
begin
        try
            requestHashMap := TRequestParams.Create(Self.request).toHashMap();
            userName_ := TUserName.Create(requestHashMap);
            TUserEntityFactory.getInstance().deleteWhere(TUserData.USERNAME, userName_.get());
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Successfully Removed the user with ');
            stringBuffer.append(TUserData.USERNAME);
            stringBuffer.append('=');
            stringBuffer.append(userName_.get());
            stringBuffer.append(' from to the user table');
            success := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to remove user with ' + TJava.ToString(TUserData.USERNAME) + ' from User table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws Exception
function TUserHelper.insert: string;
var
  userInterface_: IUserInterface;
  enable: string;
  values: TBasicArrayList;
  success: string;
  error: string;
begin
        try
            userInterface_ := TNewUserFactory.getInstance(Self.request, Self.hashMap);
            enable := TJava.UnboxString(TJava.ToObject(Self.hashMap.get(TJava.Box(TEntryData.getInstance().ENABLE))));
            if not ((enable = '')) then begin
                userInterface_.setEnable(enable);
            end;
            values := userInterface_.toVector();
            TUserEntityFactory.getInstance().insert(values);
            success := 'New User Successfully added to the Users Table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'add()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add User';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'add()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TUserHelper.update: string;
var
  user: IUserInterface;
  values: TJavaHashMap<TObject, TObject>;
  success: string;
  error: string;
begin
        try
            user := TNewUserFactory.getInstance(Self.request, Self.hashMap);
            values := user.toHashMap();
            TUserEntityFactory.getInstance().update(user.getUserName(), values);
            success := 'New User Successfully added to the Users Table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add User';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TUserHelper.drop: string;
var
  success: string;
  error: string;
begin
        try
            success := TUserEntityFactory.getInstance().dropTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF(success, TJava.Box(Self), Self.commonStrings.DROP);
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to drop user table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.DROP, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TUserHelper.create_: string;
var
  success: string;
  error: string;
begin
        try
            success := TUserEntityFactory.getInstance().createTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'create()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to create user table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TUserHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TUserEntityFactory.getInstance(), Self.portion);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'restore()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to restore backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'restore()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TUserHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TUserEntityFactory.getInstance());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPER) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'backup()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to make backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backup()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

