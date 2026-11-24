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
// package views.generic.basket.mini
unit MiniBasketView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TMiniBasketView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasketData, BasketInterface, SearchData;


{AB:CODE}

procedure TMiniBasketView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TMiniBasketView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMiniBasketView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
function TMiniBasketView.toXmlNode(document_: TDocument): TNode;
var
  basketInterface_: IBasketInterface;
  basketNode: TNode;
  totalNumberNode: TNode;
  totalNumberTextNode: TNode;
  totalWeightNode: TNode;
  totalWeightTextNode: TNode;
  subTotalNode: TNode;
  subTotalTextNode: TNode;
begin
        try
            basketInterface_ := Self.getWeblisketSession().getOrder().getBasket();
            basketNode := document_.createElement(TBasketData.BASKET);
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
    

procedure TMiniBasketView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TMiniBasketView.view: string;
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

