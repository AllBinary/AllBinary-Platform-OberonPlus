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
// package admin.taghelpers
unit InventoryRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, ItemInterface, LogUtil, ModifyTable;

type
  {AB:TYPES}
  TInventoryRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    itemInterface: IItemInterface;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function insert: string; virtual;
        function delete_: string; virtual;
        function update: string; virtual;
        function getItemInterface: IItemInterface; virtual;
  end;

implementation
uses
  InventoryItemViewParentTagHelper, BasicArrayList, BasicArrayListD, AbTagData, TableMappingInterface, InventoryEntityFactory, StringMaker, HelperTag, InventoryItemView;


{AB:CODE}

procedure TInventoryRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
end;
    

constructor TInventoryRequestHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  inventoryTag: THelperTag;
  itemView: TInventoryItemView;
begin
    inherited Create;
    InitFields;
        inventoryTag := THelperTag(TJava.ToObject(propertiesHashMap.get(TJava.Box(TAbTagData.PARENT))));
        itemView := TInventoryItemViewParentTagHelper.getInstance().getInventoryItemView(inventoryTag);
        Self.itemInterface := itemView.getItemInterface();
end;
    

// throws Exception
function TInventoryRequestHelper.insert: string;
var
  dataMappingInterface: ITableMappingInterface;
  values: TBasicArrayList;
  success: string;
  error: string;
begin
        try
            dataMappingInterface := (TJava.ToObject(Self.getItemInterface()) as ITableMappingInterface);
            values := dataMappingInterface.toVector();
            TInventoryEntityFactory.getInstance().getInventoryEntityInstance().insert(values);
            success := 'Successfully Added Product';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add item to Inventory';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insert()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TInventoryRequestHelper.delete_: string;
var
  dataMappingInterface: ITableMappingInterface;
  id: string;
  stringBuffer: TStringMaker;
  success: string;
  error: string;
begin
        try
            dataMappingInterface := (TJava.ToObject(Self.getItemInterface()) as ITableMappingInterface);
            id := TJava.UnboxString(TJava.ToObject(dataMappingInterface.getKey()));
            TInventoryEntityFactory.getInstance().getInventoryEntityInstance().deleteWhere(Self.basicItemData.ID, id);
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Successfully Removed the item with ');
            stringBuffer.append(Self.basicItemData.ID);
            stringBuffer.append('=');
            stringBuffer.append(id);
            stringBuffer.append(' from to the Inventory table');
            success := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to remove item with from Inventory';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.tagStrings.DO_START_TAG, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TInventoryRequestHelper.update: string;
var
  success: string;
  error: string;
begin
        try
            Self.delete_();
            Self.insert();
            success := 'Item Successfully Updated';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed To Update Item';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TInventoryRequestHelper.getItemInterface: IItemInterface;
begin
        Exit(Self.itemInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

