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
unit Basket;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Money, BasketInterface;

type
  {AB:TYPES}
  TBasket = class(TInterfacedObject, IBasketInterface)
  public
    items: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure addItem(id: string; num: string); virtual;
        procedure removeItem(id: string); virtual;
        procedure adjustItem(id: string; num: string); virtual;
        function getTotalWeight: string; virtual;
        function getNumberOfItems: Integer; virtual;
        function getIds: ISet; virtual;
        function getItems: TJavaHashMap<TObject, TObject>; virtual;
        function getNumberOf(product: string): Integer; virtual;
        function getSubTotal: TMoney; virtual;
  end;

implementation
uses
  ItemInterface, MoneyException, InventoryEntity, InventoryEntityFactory, StdUtil;


{AB:CODE}

procedure TBasket.InitFields;
begin
  Self.items := TStdUtil.getInstance().createHashMap();
end;

function TBasket.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasket.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasket.addItem(id: string; num: string);
var
  oldNumStr: string;
  oldNumInt: Integer;
  numInt: Integer;
  newNumInt: Integer;
begin
        if Self.items.containsKey(TJava.Box(id)) then begin
            oldNumStr := TJava.NewString(TJava.UnboxString(TJava.ToObject(Self.items.get(TJava.Box(id)))));
            oldNumInt := IntToStr(oldNumStr);
            numInt := IntToStr(num);
            newNumInt := ((oldNumInt)) + ((numInt));
            Self.items.put(TJava.Box(id), TJava.Box(newNumInt.toString()));
        end else begin
            Self.items.put(TJava.Box(id), TJava.Box(num));
        end;
end;
    

procedure TBasket.removeItem(id: string);
begin
        Self.items.remove(TJava.Box(id));
end;
    

procedure TBasket.adjustItem(id: string; num: string);
begin
        if (StrToInt(num)) > (0) then begin
            Self.items.put(TJava.Box(id), TJava.Box(num));
        end else begin
            Self.items.remove(TJava.Box(id));
        end;
end;
    

function TBasket.getTotalWeight: string;
var
  itemsAndNumberInBasket: TJavaHashMap<TObject, TObject>;
  totalWeight: TMoney;
  items: ISet;
  product: string;
  weightFloat: Single;
  itemArray: TArray<TObject>;
  size: Integer;
  index: Integer;
begin
        itemsAndNumberInBasket := Self.getItems();
        totalWeight := TMoney.Create();
        if (itemsAndNumberInBasket.size()) > (0) then begin
            items := itemsAndNumberInBasket.keySet();
            
            
            itemArray := items.toArray();
            size := System.Length(itemArray);
            for index := 0 to size - 1 do begin
                product := TJava.NewString(TJava.UnboxString(TJava.ToObject(itemArray[index])));
                weightFloat := TInventoryEntity.Create().getWeight(product);
                weightFloat := ((Self.getNumberOf(product))) * ((weightFloat));
                totalWeight.add(weightFloat.toString());
            end;
        end;
        Exit(totalWeight.toString());
end;
    

function TBasket.getNumberOfItems: Integer;
begin
        Exit(Self.items.size());
end;
    

function TBasket.getIds: ISet;
var
  set_: ISet;
begin
        set_ := Self.items.keySet();
        Exit(set_);
end;
    

function TBasket.getItems: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.items);
end;
    

function TBasket.getNumberOf(product: string): Integer;
var
  numStr: string;
begin
        numStr := TJava.UnboxString(TJava.ToObject(Self.items.get(TJava.Box(product))));
        Exit(IntToStr(numStr));
end;
    

// throws MoneyException
function TBasket.getSubTotal: TMoney;
var
  itemsAndNumberInBasket: TJavaHashMap<TObject, TObject>;
  subTotal: TMoney;
  items: ISet;
  inventoryEntityFactory_: TInventoryEntityFactory;
  inventoryEntity_: TInventoryEntity;
  itemArray: TArray<TObject>;
  size: Integer;
  product: string;
  itemInterface_: IItemInterface;
  productTotal: TMoney;
  index: Integer;
begin
        itemsAndNumberInBasket := Self.getItems();
        subTotal := TMoney.Create();
        if (itemsAndNumberInBasket.size()) > (0) then begin
            items := itemsAndNumberInBasket.keySet();
            inventoryEntityFactory_ := TInventoryEntityFactory.getInstance();
            inventoryEntity_ := TInventoryEntity(TJava.ToObject(inventoryEntityFactory_.getInventoryEntityInstance()));
            itemArray := items.toArray();
            size := System.Length(itemArray);
            for index := 0 to size - 1 do begin
                product := TJava.NewString(TJava.UnboxString(TJava.ToObject(itemArray[index])));
                itemInterface_ := inventoryEntity_.getItem(product);
                productTotal := itemInterface_.getPrice();
                productTotal.multiply((Self.getNumberOf(product)));
                subTotal.add(productTotal.toString());
            end;
        end;
        Exit(subTotal);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

