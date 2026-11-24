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
// package views.generic.basket
unit BasketView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TBasketView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, BasketData, BasketInterface, BasicItemView, ItemInterface, Money, InventoryEntity, InventoryEntityFactory, ModDomHelper, SearchData;


{AB:CODE}

procedure TBasketView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TBasketView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasketView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
end;
    

// throws Exception
function TBasketView.toXmlNode(document_: TDocument): TNode;
var
  inventoryEntity_: TInventoryEntity;
  basketInterface_: IBasketInterface;
  basketNode: TNode;
  itemsAndNumberInBasket: TJavaHashMap<TObject, TObject>;
  numberOfResults: Integer;
  items: ISet;
  productArray: TArray<TObject>;
  size: Integer;
  product: string;
  itemInterface_: IItemInterface;
  basicItemView_: TBasicItemView;
  node_: TNode;
  numberInBasket: string;
  itemPrice: TMoney;
  itemTotal: TMoney;
  index: Integer;
  totalNumberNode: TNode;
  totalNumberTextNode: TNode;
  totalWeightNode: TNode;
  totalWeightTextNode: TNode;
  subTotalNode: TNode;
  subTotalTextNode: TNode;
begin
        try
            inventoryEntity_ := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
            basketInterface_ := Self.getWeblisketSession().getOrder().getBasket();
            basketNode := document_.createElement(TBasketData.BASKET);
            itemsAndNumberInBasket := basketInterface_.getItems();
            numberOfResults := 1;
            items := itemsAndNumberInBasket.keySet();
            productArray := items.toArray();
            size := System.Length(productArray);
            for index := 0 to size - 1 do begin
                product := TJava.NewString(TJava.UnboxString(TJava.ToObject(productArray[index])));
                itemInterface_ := inventoryEntity_.getItem(product);
                if (itemInterface_) <> (nil) then begin
                    basicItemView_ := TBasicItemView.Create(itemInterface_, TBasicArrayListD.Create());
                    node_ := basicItemView_.toXmlNode(document_);
                    numberInBasket := basketInterface_.getNumberOf(product).toString();
                    node_.appendChild(TModDomHelper.createNameValueNodes(document_, TBasketData.ITEMTOTALINBASKET, numberInBasket));
                    itemPrice := itemInterface_.getPrice();
                    itemTotal := TMoney.Create(itemPrice);
                    itemTotal.multiply(basketInterface_.getNumberOf(product).intValue());
                    node_.appendChild(TModDomHelper.createNameValueNodes(document_, TBasketData.ITEMTOTAL, itemTotal.toString()));
                    basketNode.appendChild(node_);
                end else begin
                    Self.logUtil.putF('Product Failed: ' + product, TJava.Box(Self), 'toXmlNode');
                end;
                Inc(numberOfResults);
            end;
            totalNumberNode := document_.createElement(TSearchData.TOTAL_NUMBER_ITEMS);
            totalNumberTextNode := document_.createTextNode(basketInterface_.getNumberOfItems().toString());
            totalNumberNode.appendChild(totalNumberTextNode);
            totalWeightNode := document_.createElement(TBasketData.TOTALWEIGHT);
            totalWeightTextNode := document_.createTextNode(basketInterface_.getTotalWeight().toString());
            totalWeightNode.appendChild(totalWeightTextNode);
            subTotalNode := document_.createElement(TBasketData.SUBTOTAL);
            subTotalTextNode := document_.createTextNode(basketInterface_.getSubTotal().toString());
            subTotalNode.appendChild(subTotalTextNode);
            basketNode.appendChild(totalNumberNode);
            basketNode.appendChild(totalWeightNode);
            basketNode.appendChild(subTotalNode);
            Exit(basketNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TBasketView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TBasketView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

