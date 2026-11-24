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
// package org.allbinary.business.user.commerce.inventory.item
unit ItemFactoryUnused;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TableMappingInterface;

type
  {AB:TYPES}
  TItemFactoryUnused = class(TObject)
  public
        constructor Create;
        class function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): ITableMappingInterface; overload; static;
        class function getInstance(request: THttpServletRequest): ITableMappingInterface; overload; static;
  end;

implementation
uses
  Item, MoneyException, RequestParams;


{AB:CODE}
    

constructor TItemFactoryUnused.Create;
begin
    inherited Create;
end;
    

// throws MoneyException
class function TItemFactoryUnused.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): ITableMappingInterface;
begin
        Exit((TJava.ToObject(TItem.Create(hashMap_)) as ITableMappingInterface));
end;
    

// throws Exception, MoneyException
class function TItemFactoryUnused.getInstance(request: THttpServletRequest): ITableMappingInterface;
begin
        Exit((TJava.ToObject(TItem.Create(TRequestParams.Create(request).toHashMap())) as ITableMappingInterface));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

