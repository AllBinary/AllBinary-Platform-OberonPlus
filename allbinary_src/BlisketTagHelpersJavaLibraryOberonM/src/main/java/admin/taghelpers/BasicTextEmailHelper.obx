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
unit BasicTextEmailHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, TagHelper;

type
  {AB:TYPES}
  TBasicTextEmailHelper = class(TTagHelper)
  public
    abeClientInformation: IAbeClientInformationInterface;
    hashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure send; virtual;
  end;

implementation
uses
  UserEmailEventNameData, UserEmailEventHandler, AdminUserEmailEventHandlerSingletons, AdminEmailInfo, BasicEmailInfo, EmailInfo, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TBasicTextEmailHelper.InitFields;
begin
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
end;
    

constructor TBasicTextEmailHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.pageContext := pageContext_;
        Self.hashMap := hashMap_;
end;
    

// throws Exception
procedure TBasicTextEmailHelper.send;
var
  adminEmailSubject: string;
  adminEmailTextBody: string;
  adminBasicEmailInfo: TBasicEmailInfo;
  adminEmailInfo_: TEmailInfo;
  adminUserEmailEventHandler: TUserEmailEventHandler;
begin
        adminEmailSubject := TJava.UnboxString(TJava.ToObject(Self.hashMap.get(TJava.Box('Subject'))));
        adminEmailTextBody := TJava.UnboxString(TJava.ToObject(Self.hashMap.get(TJava.Box('Body'))));
        adminBasicEmailInfo := TBasicEmailInfo(TJava.ToObject(TAdminEmailInfo.Create(adminEmailSubject, adminEmailTextBody)));
        adminEmailInfo_ := TEmailInfo.Create(adminBasicEmailInfo);
        adminUserEmailEventHandler := TAdminUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, TUserEmailEventNameData.INSTALLER);
        adminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.INSTALLER, adminEmailInfo_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

