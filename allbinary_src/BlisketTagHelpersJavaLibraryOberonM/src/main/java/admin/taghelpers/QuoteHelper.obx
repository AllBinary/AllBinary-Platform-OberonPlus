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
unit QuoteHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, Portion, QuoteRequest, WeblisketSession, LogUtil, AbeClientInformationInterface, BasicTable;

type
  {AB:TYPES}
  TQuoteHelper = class(TBasicTable)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    weblisketSession: TWeblisketSession;
    storeFrontInterface: IStoreFrontInterface;
    portion: TPortion;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure emailUser(quoteRequest_: TQuoteRequest);
        procedure emailAdmins(quoteRequest_: TQuoteRequest);
        function email: string; virtual;
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFront, StoreFrontData, StoreFrontFactory, UserInterface, UserEntityFactory, QuoteRequestEntity, QuoteRequestEntityFactory, UserEmailEventNameData, UserEmailEventHandler, AdminUserEmailEventHandlerSingletons, StoreAdminUserEmailEventHandlerSingletons, UserEmailEventHandlerSingletons, BasicEmailInfo, EmailInfo, StoreEmailInfo, AbSqlTableUtil, StringMaker, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TQuoteHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  
end;
    

constructor TQuoteHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
begin
    inherited Create;
    InitFields;
        storeName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if (storeName) <> ('') then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        end else begin
            Self.storeFrontInterface := TStoreFront.Create();
        end;
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.portion := TPortion.Create(hashMap_);
end;
    

// throws Exception
procedure TQuoteHelper.emailUser(quoteRequest_: TQuoteRequest);
var
  user: IUserInterface;
  userEmailSubject: string;
  stringBuffer: TStringMaker;
  userEmailTextBody: string;
  basicEmailInfo_: TBasicEmailInfo;
  emailInfo_: TEmailInfo;
  userEmailEventHandler_: TUserEmailEventHandler;
begin
        user := TUserEntityFactory.getInstance().getUser(quoteRequest_.getUserName());
        userEmailSubject := 'Quote Request Receipt';
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('This is just a verification email. ');
        stringBuffer.append('We usually respond to quote request within 24 hours.');
        stringBuffer.append(''#10''#10'Thank You For Your Business.');
        userEmailTextBody := stringBuffer.toString();
        basicEmailInfo_ := TBasicEmailInfo(TJava.ToObject(TStoreEmailInfo.Create(Self.storeFrontInterface, userEmailSubject, userEmailTextBody)));
        emailInfo_ := TEmailInfo.Create(basicEmailInfo_);
        userEmailEventHandler_ := TUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, TUserEmailEventNameData.QUOTEREQUEST, user);
        userEmailEventHandler_.receiveEmailInfo(TUserEmailEventNameData.QUOTEREQUEST, emailInfo_);
end;
    

// throws Exception
procedure TQuoteHelper.emailAdmins(quoteRequest_: TQuoteRequest);
var
  adminEmailSubject: string;
  stringBuffer: TStringMaker;
  adminEmailTextBody: string;
  basicEmailInfo_: TBasicEmailInfo;
  emailInfo_: TEmailInfo;
  storeAdminUserEmailEventHandler: TUserEmailEventHandler;
  adminUserEmailEventHandler: TUserEmailEventHandler;
begin
        adminEmailSubject := 'Quote Request';
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(''#10'UserName: ');
        stringBuffer.append(quoteRequest_.getUserName());
        stringBuffer.append(''#10'Project Info: '#10'');
        stringBuffer.append(quoteRequest_.getProjectInfo());
        stringBuffer.append(''#10'User Comments: '#10'');
        stringBuffer.append(quoteRequest_.getUserComments());
        stringBuffer.append(''#10'Budget: '#10'');
        stringBuffer.append(quoteRequest_.getBudget());
        stringBuffer.append(''#10'Time Frame: '#10'');
        stringBuffer.append(quoteRequest_.getTimeFrame());
        stringBuffer.append(''#10'Comments: '#10'');
        stringBuffer.append(quoteRequest_.getComments());
        adminEmailTextBody := stringBuffer.toString();
        basicEmailInfo_ := TBasicEmailInfo(TJava.ToObject(TStoreEmailInfo.Create(Self.storeFrontInterface, adminEmailSubject, adminEmailTextBody)));
        emailInfo_ := TEmailInfo.Create(basicEmailInfo_);
        storeAdminUserEmailEventHandler := TAdminUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, TUserEmailEventNameData.QUOTEREQUEST);
        adminUserEmailEventHandler := TStoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(TUserEmailEventNameData.QUOTEREQUEST, Self.abeClientInformation, Self.storeFrontInterface);
        storeAdminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.QUOTEREQUEST, emailInfo_);
        adminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.QUOTEREQUEST, emailInfo_);
end;
    

// throws Exception
function TQuoteHelper.email: string;
var
  quoteRequestEntity_: TQuoteRequestEntity;
  userName: string;
  vector: TBasicArrayList;
  id: Integer;
  size: Integer;
  nextId: Integer;
  index: Integer;
  quoteRequest_: TQuoteRequest;
begin
        try
            quoteRequestEntity_ := TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance();
            userName := Self.weblisketSession.getUserName();
            vector := quoteRequestEntity_.getIds(userName);
            id := 0;
            size := vector.size();
            for index := 0 to size - 1 do begin
                nextId := (Integer(vector.get(index))).intValue();
                if (id) < (nextId) then begin
                    id := nextId;
                end;
            end;
            quoteRequest_ := quoteRequestEntity_.get(userName, id);
            if (quoteRequest_) <> (nil) then begin
                Self.emailUser(quoteRequest_);
                Self.emailAdmins(quoteRequest_);
                Exit('Thank You For Your Business.<p/>');
            end else begin
                raise SysUtils.Exception.Create('No Quote Request');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'email', TJava.Box(e));
            end;
            Exit('Thank You For Your Business.<p>');
            end;
        end;
end;
    

function TQuoteHelper.drop: string;
var
  success: string;
  error: string;
begin
        try
            success := TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().dropTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), Self.commonStrings.DROP);
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to drop QuoteRequest table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.DROP, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TQuoteHelper.create_: string;
var
  success: string;
  error: string;
begin
        try
            success := TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().createTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'create()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to create new QuoteRequest table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TQuoteHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance(), Self.portion);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'restore()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to restore backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'restore()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TQuoteHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'backup()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to make backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
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

