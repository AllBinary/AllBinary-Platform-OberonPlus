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
// package org.allbinary.business.user.commerce.inventory.basket
unit BasketInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Money;

type
  {AB:TYPES}
  IBasketInterface = interface(IJavaObject) ['IBasketInterface']
        procedure addItem(id: string; num: string);
        procedure removeItem(id: string);
        procedure adjustItem(id: string; num: string);
        function getTotalWeight: string;
        function getNumberOfItems: Integer;
        function getIds: ISet;
        function getItems: TJavaHashMap<TObject, TObject>;
        function getNumberOf(product: string): Integer;
        function getSubTotal: TMoney;
  end;
  TBasketInterface = IBasketInterface;

implementation
uses
  MoneyException;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

