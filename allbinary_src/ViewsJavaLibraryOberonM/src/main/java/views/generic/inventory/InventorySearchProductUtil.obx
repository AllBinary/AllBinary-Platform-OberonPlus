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
// package views.generic.inventory
unit InventorySearchProductUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, SearchRequest, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TInventorySearchProductUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    ITEM_NOT_FOUND: string;
    class var instance: TInventorySearchProductUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInventorySearchProductUtil; static;
        function getProduct(abeClientInformation: IAbeClientInformationInterface; searchRequest_: TSearchRequest; product: string): string; virtual;
  end;

implementation
uses
  BasicArrayListD, BasicItemView, ItemInterface, InventoryEntity, InventoryEntityFactory, XmlDocumentHelper, StoreTransformer, TransformDocumentInterface, TransformStoreDocumentFactory, TransformInfoHttpSearch, TransformInfoInterface;


{AB:CODE}

procedure TInventorySearchProductUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.ITEM_NOT_FOUND := 'Item Not Found.';
end;

constructor TInventorySearchProductUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInventorySearchProductUtil.getInstance: TInventorySearchProductUtil;
begin
        Exit(TInventorySearchProductUtil.instance);
end;
    

// throws Exception
function TInventorySearchProductUtil.getProduct(abeClientInformation: IAbeClientInformationInterface; searchRequest_: TSearchRequest; product: string): string;
var
  inventoryEntityInterface: TInventoryEntity;
  itemInterface_: IItemInterface;
  viewDocumentInterface: ITransformDocumentInterface;
  success: string;
  outputStr: string;
begin
        try
            inventoryEntityInterface := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
            itemInterface_ := inventoryEntityInterface.getItem(product);
            if (itemInterface_) <> (nil) then begin
                viewDocumentInterface := TTransformStoreDocumentFactory.getInstance(searchRequest_);
                viewDocumentInterface.getBaseNode().appendChild(TBasicItemView.Create(itemInterface_, TBasicArrayListD.Create()).toXmlNode(viewDocumentInterface.getDoc()));
                success := TXmlDocumentHelper.toString(viewDocumentInterface.getDoc());
                outputStr := TStoreTransformer.Create(abeClientInformation, (TJava.ToObject(TTransformInfoHttpSearch.Create(searchRequest_)) as ITransformInfoInterface)).translate(success);
                Exit(outputStr);
            end else begin
                Exit(Self.ITEM_NOT_FOUND);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'getProduct', TJava.Box(e));
            end;
            raise SysUtils.Exception.Create('Failed to getProduct');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInventorySearchProductUtil.instance := TInventorySearchProductUtil.Create();
  {AB:END}

end.

