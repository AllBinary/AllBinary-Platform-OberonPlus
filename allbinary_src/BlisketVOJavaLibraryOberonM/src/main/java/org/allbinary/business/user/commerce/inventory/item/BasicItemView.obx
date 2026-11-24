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
unit BasicItemView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, CommonStrings, Document, Node, BasicItemData, ItemInterface;

type
  {AB:TYPES}
  TBasicItemView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    basicItemData: TBasicItemData;
    itemInterface: IItemInterface;
    vector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(itemInterface_: IItemInterface; vector: TBasicArrayList);
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasicArrayListD, ModDomHelper, StringUtil;


{AB:CODE}

procedure TBasicItemView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
end;

function TBasicItemView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicItemView.Create(itemInterface_: IItemInterface; vector: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.itemInterface := itemInterface_;
        Self.vector := vector;
end;
    

// throws Exception
function TBasicItemView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  EMPTY_STRING: string;
  stringUtil_: TStringUtil;
  keySet: ISet;
  node_: TNode;
  nameArray: TArray<TObject>;
  size2: Integer;
  name: string;
  value: string;
  index: Integer;
  totalNode: TNode;
  size: Integer;
  domNodeInterface_: IDomNodeInterface;
  customNode: TNode;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'toXmlNode');
        end;
        hashMap_ := Self.itemInterface.toHashMap();
        EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
        hashMap_.put(TJava.Box(Self.basicItemData.IMAGE), TJava.Box(EMPTY_STRING));
        stringUtil_ := TStringUtil.getInstance();
        keySet := hashMap_.keySet();
        node_ := document_.createElement(Self.basicItemData.ITEM);
        nameArray := keySet.toArray();
        size2 := System.Length(nameArray);
        for index := 0 to size2 - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(nameArray[index]));
            value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(name))));
            value := stringUtil_.getNonNull(value);
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
        end;
        totalNode := TModDomHelper.createNameValueNodes(document_, Self.basicItemData.TOTAL, Self.itemInterface.getTotal().toString());
        node_.appendChild(totalNode);
        size := Self.vector.size();
        for index := 0 to size - 1 do begin
            domNodeInterface_ := (TJava.ToObject(Self.vector.get(index)) as IDomNodeInterface);
            customNode := domNodeInterface_.toXmlNode(document_);
            node_.appendChild(customNode);
        end;
        Exit(node_);
end;
    

function TBasicItemView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TBasicItemView.view: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

