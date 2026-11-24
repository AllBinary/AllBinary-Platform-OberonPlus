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
unit BasketReview;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Item, Document, Node;

type
  {AB:TYPES}
  TBasketReview = class(TObject)
  public
    items: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        function isValid: Boolean; virtual;
        procedure addItem(item_: TItem); virtual;
        function getItems: TBasicArrayList; virtual;
        procedure removeItem(id: string); virtual;
        procedure adjustItem(id: string; num: string); virtual;
        function getTotalWeight: string; virtual;
        function getNumberOfItems: Integer; virtual;
        function getIds: ISet; virtual;
        function getNumberOf(id: string): Integer; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  BasketData, BasicArrayListD, ItemView, StdUtil;


{AB:CODE}

procedure TBasketReview.InitFields;
begin
  Self.items := TBasicArrayListD.Create();
end;
    

constructor TBasketReview.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TBasketReview.isValid: Boolean;
begin
        Exit(True);
end;
    

procedure TBasketReview.addItem(item_: TItem);
begin
        Self.items.add(TJava.Box(item_));
end;
    

function TBasketReview.getItems: TBasicArrayList;
begin
        Exit(Self.items);
end;
    

procedure TBasketReview.removeItem(id: string);
var
  itemArray: TArray<TObject>;
  size: Integer;
  item_: TItem;
  index: Integer;
begin
        itemArray := Self.items.toArray();
        size := System.Length(itemArray);
        for index := 0 to size - 1 do begin
            item_ := TItem(TJava.ToObject(itemArray[index]));
            if (item_.getId().compareTo(id)) = (0) then begin
                Self.items.remove(item_);
            end;
        end;
end;
    

procedure TBasketReview.adjustItem(id: string; num: string);
var
  itemArray: TArray<TObject>;
  size: Integer;
  item_: TItem;
  index: Integer;
begin
        itemArray := Self.items.toArray();
        size := System.Length(itemArray);
        for index := 0 to size - 1 do begin
            item_ := TItem(TJava.ToObject(itemArray[index]));
            if (item_.getId().compareTo(id)) = (0) then begin
                item_.setNumber(num);
            end;
        end;
end;
    

function TBasketReview.getTotalWeight: string;
var
  weightFloat: Single;
  itemArray: TArray<TObject>;
  size: Integer;
  item_: TItem;
  index: Integer;
begin
        weightFloat := 0.0;
        itemArray := Self.items.toArray();
        size := System.Length(itemArray);
        for index := 0 to size - 1 do begin
            item_ := TItem(TJava.ToObject(itemArray[index]));
            weightFloat := (weightFloat) + (item_.getWeight().floatValue());
        end;
        Exit(weightFloat.toString());
end;
    

function TBasketReview.getNumberOfItems: Integer;
begin
        Exit(Self.items.size());
end;
    

function TBasketReview.getIds: ISet;
var
  idSet: THashSet;
  itemArray: TArray<TObject>;
  size: Integer;
  item_: TItem;
  index: Integer;
begin
        idSet := THashSet.Create();
        itemArray := Self.items.toArray();
        size := System.Length(itemArray);
        for index := 0 to size - 1 do begin
            item_ := TItem(TJava.ToObject(itemArray[index]));
            idSet.add(item_.getId());
        end;
        Exit((TJava.ToObject(idSet) as ISet));
end;
    

function TBasketReview.getNumberOf(id: string): Integer;
var
  itemArray: TArray<TObject>;
  size: Integer;
  item_: TItem;
  index: Integer;
begin
        itemArray := Self.items.toArray();
        size := System.Length(itemArray);
        for index := 0 to size - 1 do begin
            item_ := TItem(TJava.ToObject(itemArray[index]));
            if (item_.getId().compareTo(id)) = (0) then begin
                Exit(item_.getNumber());
            end;
        end;
        Exit(0);
end;
    

// throws Exception
function TBasketReview.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  itemArray: TArray<TObject>;
  size: Integer;
  item_: TItem;
  index: Integer;
begin
        node_ := document_.createElement(TBasketData.BASKET);
        itemArray := Self.items.toArray();
        size := System.Length(itemArray);
        for index := 0 to size - 1 do begin
            item_ := TItem(TJava.ToObject(itemArray[index]));
            node_.appendChild(TItemView.Create(item_, TBasicArrayListD.Create()).toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

