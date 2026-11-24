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
unit ItemView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Document, Node, OrderItemInterface;

type
  {AB:TYPES}
  TItemView = class(TObject)
  public
    itemInterface: IOrderItemInterface;
    vector: TBasicArrayList;
    procedure InitFields;
        constructor Create(itemInterface: IOrderItemInterface; vector: TBasicArrayList);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ItemData, BasicItemView, BasicArrayListD, StreetAddressData, ModDomHelper, StringUtil;


{AB:CODE}

procedure TItemView.InitFields;
begin
  
  
end;
    

constructor TItemView.Create(itemInterface: IOrderItemInterface; vector: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.itemInterface := itemInterface;
        Self.vector := vector;
end;
    

// throws Exception
function TItemView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  keySet: ISet;
  node_: TNode;
  basicItemView_: TBasicItemView;
  stringUtil_: TStringUtil;
  nameArray: TArray<TObject>;
  size: Integer;
  name: string;
  value: string;
  index: Integer;
  shippingAddressNode: TNode;
begin
        hashMap_ := Self.itemInterface.toHashMap();
        keySet := hashMap_.keySet();
        node_ := document_.createElement(TItemData.ITEM);
        basicItemView_ := TBasicItemView.Create(Self.itemInterface, Self.vector);
        node_.appendChild(basicItemView_.toXmlNode(document_));
        stringUtil_ := TStringUtil.getInstance();
        nameArray := keySet.toArray();
        size := System.Length(nameArray);
        for index := 0 to size - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(nameArray[index]));
            value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(name))));
            value := stringUtil_.getNonNull(value);
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
        end;
        shippingAddressNode := document_.createElement(TStreetAddressData.NAME);
        shippingAddressNode.appendChild(Self.itemInterface.getShippingAddress().toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

