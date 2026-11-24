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
// package org.allbinary.business.user.modules.admin.store.web.workflow.editor
unit WorkflowEditorWebStoreAdminUser;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, User, WeblisketSessionInterface;

type
  {AB:TYPES}
  TWorkflowEditorWebStoreAdminUser = class(TUser)
  public
        constructor Create; overload;
        constructor Create(userHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure validateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        procedure updateSession(weblisketSession: IWeblisketSessionInterface); virtual;
  end;

implementation

{AB:CODE}
    

constructor TWorkflowEditorWebStoreAdminUser.Create;
begin
        inherited Create();
end;
    

constructor TWorkflowEditorWebStoreAdminUser.Create(userHashMap: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(userHashMap);
end;
    

procedure TWorkflowEditorWebStoreAdminUser.validateSession(weblisketSession: IWeblisketSessionInterface);
begin
        inherited validateSession(weblisketSession);
        Self.updateSession(weblisketSession);
end;
    

procedure TWorkflowEditorWebStoreAdminUser.updateSession(weblisketSession: IWeblisketSessionInterface);
begin
        weblisketSession.setStoreName(Self.getPermissions());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

