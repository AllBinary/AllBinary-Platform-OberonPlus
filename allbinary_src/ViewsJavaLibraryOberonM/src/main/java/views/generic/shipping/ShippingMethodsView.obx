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
// package views.generic.shipping
unit ShippingMethodsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, ShippingMethods, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TShippingMethodsView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    shippingMethods: TShippingMethods;
    storeFrontInterface: IStoreFrontInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFrontFactory, EntryData, StreetAddress, BasketInterface, OrderInterface, Money, TaxFactory, ShippingMethodsData, ShippingInterface, StreetAddressesEntityInterface, ShippingAddressesEntityFactory, ModDomHelper;


{AB:CODE}

procedure TShippingMethodsView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TShippingMethodsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TShippingMethodsView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.storeFrontInterface := TStoreFrontFactory.getInstance(Self.getTransformInfoInterface().getStoreName());
        Self.shippingMethods := TShippingMethods.Create(Self.abeClientInformation, Self.storeFrontInterface);
end;
    

// throws Exception
function TShippingMethodsView.toXmlNode(document_: TDocument): TNode;
var
  shippingMethodsNode: TNode;
  order: IOrderInterface;
  basket: IBasketInterface;
  shippingAddressesEntityInterface: IStreetAddressesEntityInterface;
  streetAddress_: TStreetAddress;
  shippingVector: TBasicArrayList;
  size: Integer;
  shippingMethodNode: TNode;
  shipping: IShippingInterface;
  shippingView: IDomNodeInterface;
  shippingCost: TMoney;
  subTotal: TMoney;
  taxRate: Single;
  tax: TMoney;
  total: TMoney;
  index: Integer;
begin
        try
            shippingMethodsNode := document_.createElement(TShippingMethodsData.SHIPPINGMETHODSORDERSUMMARIES);
            order := Self.getWeblisketSession().getOrder();
            basket := Self.getWeblisketSession().getOrder().getBasket();
            shippingAddressesEntityInterface := TShippingAddressesEntityFactory.getInstance().getInstance(Self.getWeblisketSession().getUserName());
            streetAddress_ := shippingAddressesEntityInterface.getDefault();
            shippingVector := Self.shippingMethods.get();
            size := shippingVector.size();
            for index := 0 to size - 1 do begin
                shippingMethodNode := document_.createElement(TShippingMethodsData.SHIPPINGMETHODORDERSUMMARY);
                shipping := (TJava.ToObject(shippingVector.get(index)) as IShippingInterface);
                shippingView := (TJava.ToObject(shipping) as IDomNodeInterface);
                shippingMethodNode.appendChild(shippingView.toXmlNode(document_));
                shippingCost := shipping.getCost(order);
                subTotal := basket.getSubTotal();
                taxRate := TTaxFactory.getInstance().getInstance(Self.abeClientInformation, Self.storeFrontInterface).getTaxRate(streetAddress_, Self.storeFrontInterface);
                tax := TMoney.Create();
                total := TMoney.Create();
                total.add(shippingCost.toString());
                total.add(subTotal.toString());
                tax.add(total.toString());
                tax.multiply(taxRate);
                total.add(tax.toString());
                shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TShippingMethodsData.SHIPPINGCOST, shippingCost.toString()));
                shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TShippingMethodsData.TAXRATE, taxRate.toString()));
                shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TShippingMethodsData.SUBTOTAL, subTotal.toString()));
                shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TShippingMethodsData.TAX, tax.toString()));
                shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TShippingMethodsData.TOTAL, total.toString()));
                shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TEntryData.getInstance().DEFAULT, Self.shippingMethods.getDefault().getName()));
                shippingMethodsNode.appendChild(shippingMethodNode);
            end;
            Exit(shippingMethodsNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TShippingMethodsView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

function TShippingMethodsView.view: string;
var
  error: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view ShippingMethods';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

