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
unit InventoryView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TInventoryView = class(THttpStoreComponentView, IDomNodeInterface)
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
  BasicArrayList, BasicArrayListD, StoreFrontFactory, InventoryData, BasicItemView, ItemInterface, InventoryEntity, InventoryEntityFactory, ModDomHelper, SearchData;


{AB:CODE}

procedure TInventoryView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TInventoryView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInventoryView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
function TInventoryView.toXmlNode(document_: TDocument): TNode;
var
  inventoryEntityInterface: TInventoryEntity;
  inventoryNode: TNode;
  itemVector: TBasicArrayList;
  size: Integer;
  itemInterface_: IItemInterface;
  node_: TNode;
  index: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Starting', TJava.Box(Self), 'toXmlNode');
            end;
            inventoryEntityInterface := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
            inventoryNode := document_.createElement(TInventoryData.INVENTORY);
            itemVector := inventoryEntityInterface.getItems(TStoreFrontFactory.getInstance(Self.getTransformInfoInterface().getStoreName()));
            inventoryNode.appendChild(TModDomHelper.createNameValueNodes(document_, TSearchData.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, itemVector.size().toString()));
            size := itemVector.size();
            for index := 0 to size - 1 do begin
                itemInterface_ := (TJava.ToObject(itemVector.get(index)) as IItemInterface);
                if (itemInterface_) <> (nil) then begin
                    node_ := TBasicItemView.Create(itemInterface_, TBasicArrayListD.Create()).toXmlNode(document_);
                    inventoryNode.appendChild(node_);
                end else begin
                    Self.logUtil.putF('Inventory', TJava.Box(Self), 'toXmlNode');
                end;
            end;
            Exit(inventoryNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TInventoryView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

function TInventoryView.view: string;
var
  error: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view Inventory';
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

