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
// package org.allbinary.data.tables.user.commerce.inventory.item
unit InventoryEntityInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, ItemInterface, BasicDataTableInterface;

type
  {AB:TYPES}
  IInventoryEntityInterface = interface(IBasicDataTableInterface) ['IInventoryEntityInterface']
        function getItem(id: string): IItemInterface;
        function getItems(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
        function getWeight(id: string): string;
        procedure deleteWhere(key: string; value: string);
        procedure insert(values: TBasicArrayList);
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>);
  end;
  TInventoryEntityInterface = IInventoryEntityInterface;

implementation
uses
  BasicArrayListD, MoneyException;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

