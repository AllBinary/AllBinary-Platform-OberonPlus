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
unit StoreFrontsRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, Portion, WeblisketSession, LogUtil, AbeClientInformationInterface, ModifyTable;

type
  {AB:TYPES}
  TStoreFrontsRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    pageContext: TPageContext;
    request: THttpServletRequest;
    weblisketSession: TWeblisketSession;
    storeName: string;
    modifyingStoreFrontInterface: IStoreFrontInterface;
    portion: TPortion;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function update: string; virtual;
        procedure sendStoreCreatedEmails; virtual;
        function install: string; virtual;
        function insert: string; virtual;
        function delete_: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFront, StoreFrontsEntityFactory, UserEmailEventNameData, UserEmailEventHandler, AdminUserEmailEventHandlerSingletons, StoreAdminUserEmailEventHandlerSingletons, AdminEmailInfo, BasicEmailInfo, EmailInfo, StoreEmailInfo, StringMaker, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TStoreFrontsRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  
  
  
  
end;
    

constructor TStoreFrontsRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.pageContext := pageContext_;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.portion := TPortion.Create(hashMap_);
        Self.getFormData();
end;
    

// throws Exception
procedure TStoreFrontsRequestHelper.getFormData;
begin
        Self.storeName := Self.weblisketSession.getStoreName();
        Self.modifyingStoreFrontInterface := (TJava.ToObject(TStoreFront.Create(Self.request)) as IStoreFrontInterface);
end;
    

function TStoreFrontsRequestHelper.update: string;
var
  success: string;
  hashMapData: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Updated Successfully';
            hashMapData := Self.modifyingStoreFrontInterface.toHashMap();
            TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().update(hashMapData);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update storefronts table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws Exception
procedure TStoreFrontsRequestHelper.sendStoreCreatedEmails;
var
  storeManagerEmailSubject: string;
  adminEmailSubject: string;
  stringBuffer: TStringMaker;
  adminEmailTextBody: string;
  adminBasicEmailInfo: TBasicEmailInfo;
  storeAdminBasicEmailInfo: TBasicEmailInfo;
  storeAdminEmailInfo: TEmailInfo;
  adminEmailInfo_: TEmailInfo;
  adminUserEmailEventHandler: TUserEmailEventHandler;
  storeAdminUserEmailEventHandler: TUserEmailEventHandler;
begin
        storeManagerEmailSubject := 'Store Manager Nofification For Store: ' + Self.modifyingStoreFrontInterface.getName();
        adminEmailSubject := 'Admin Notification For Store: ' + Self.modifyingStoreFrontInterface.getName();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Store Created: ');
        stringBuffer.append(Self.modifyingStoreFrontInterface.getName());
        stringBuffer.append(''#10''#10'');
        stringBuffer.append('Click here for the Admin Interface:'#10'');
        stringBuffer.append(Self.modifyingStoreFrontInterface.getCurrentHomeHostName());
        stringBuffer.append('/admin/login.jsp'#10''#10'');
        stringBuffer.append('Goto Your Store:'#10'');
        stringBuffer.append(Self.modifyingStoreFrontInterface.getCurrentHomeHostName());
        stringBuffer.append(Self.modifyingStoreFrontInterface.getName());
        stringBuffer.append('/index.jsp');
        stringBuffer.append(''#10''#10'');
        stringBuffer.append('UserName: ');
        stringBuffer.append(Self.weblisketSession.getUserName());
        adminEmailTextBody := stringBuffer.toString();
        adminBasicEmailInfo := TBasicEmailInfo(TJava.ToObject(TAdminEmailInfo.Create(adminEmailSubject, adminEmailTextBody)));
        storeAdminBasicEmailInfo := TBasicEmailInfo(TJava.ToObject(TStoreEmailInfo.Create(Self.modifyingStoreFrontInterface, storeManagerEmailSubject, adminEmailTextBody)));
        storeAdminEmailInfo := TEmailInfo.Create(storeAdminBasicEmailInfo);
        adminEmailInfo_ := TEmailInfo.Create(adminBasicEmailInfo);
        adminUserEmailEventHandler := TAdminUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, TUserEmailEventNameData.STORECREATED);
        storeAdminUserEmailEventHandler := TStoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(TUserEmailEventNameData.STORECREATED, Self.abeClientInformation, Self.modifyingStoreFrontInterface);
        storeAdminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.STORECREATED, storeAdminEmailInfo);
        adminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.STORECREATED, adminEmailInfo_);
end;
    

function TStoreFrontsRequestHelper.install: string;
var
  stringBuffer: TStringMaker;
  success: string;
  error: string;
begin
    TJava.MonitorEnter(Self);
    try
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Intall StoreFront Successfully: ');
            stringBuffer.appendint(Self.portion.getCurrent().intValue());
            stringBuffer.append(' of ');
            stringBuffer.appendint(Self.portion.getTotal().intValue());
            success := stringBuffer.toString();
            Self.modifyingStoreFrontInterface.install(Self.portion.getCurrent().intValue(), Self.portion.getTotal().intValue());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'install()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to Install storefront';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'install()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TStoreFrontsRequestHelper.insert: string;
var
  success: string;
  values: TBasicArrayList;
  error: string;
begin
    TJava.MonitorEnter(Self);
    try
        try
            success := 'Added Successfully';
            values := Self.modifyingStoreFrontInterface.toVector();
            TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add storefront';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insert()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TStoreFrontsRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Delete Successfully';
            TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().delete_(Self.storeName);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to delete storefronts table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

