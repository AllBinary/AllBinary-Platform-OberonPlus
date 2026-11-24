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
// package org.allbinary.business.user.modules.admin.store.web.view.editor
unit ViewEditorWebStoreAdminUserFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserFactoryInterface, UserInterface;

type
  {AB:TYPES}
  TViewEditorWebStoreAdminUserFactory = class(TInterfacedObject, IUserFactoryInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getInstance: IUserInterface; overload; virtual;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IUserInterface; overload; virtual;
  end;

implementation
uses
  ViewEditorWebStoreAdminUser;


{AB:CODE}

function TViewEditorWebStoreAdminUserFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TViewEditorWebStoreAdminUserFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TViewEditorWebStoreAdminUserFactory.getInstance: IUserInterface;
begin
        Exit(TViewEditorWebStoreAdminUser.Create());
end;
    

// throws Exception
function TViewEditorWebStoreAdminUserFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IUserInterface;
begin
        Exit(TViewEditorWebStoreAdminUser.Create(hashMap_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

