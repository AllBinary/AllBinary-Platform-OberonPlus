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
unit DownloadItemsRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DownloadableItem, LogUtil, ModifyTable;

type
  {AB:TYPES}
  TDownloadItemsRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    downloadableItem: TDownloadableItem;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function insert: string; virtual;
        function delete_: string; virtual;
        function update: string; virtual;
  end;

implementation
uses
  InventoryItemViewParentTagHelper, BasicArrayList, BasicArrayListD, AbTagData, DownloadItemsEntityFactory, CommonSeps, HelperTag, DownloadableInventoryItemView;


{AB:CODE}

procedure TDownloadItemsRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TDownloadItemsRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  inventoryTag: THelperTag;
  inventoryItemViewParentTagHelper_: TInventoryItemViewParentTagHelper;
  downloadableInventoryItemView_: TDownloadableInventoryItemView;
begin
    inherited Create;
    InitFields;
        inventoryTag := THelperTag(TJava.ToObject(hashMap_.get(TJava.Box(TAbTagData.PARENT))));
        inventoryItemViewParentTagHelper_ := TInventoryItemViewParentTagHelper.getInstance();
        downloadableInventoryItemView_ := inventoryItemViewParentTagHelper_.getDownloadableInventoryItemView(inventoryTag);
        Self.downloadableItem := downloadableInventoryItemView_.getDownloadableItem();
end;
    

function TDownloadItemsRequestHelper.insert: string;
var
  vector: TBasicArrayList;
  success: string;
  error: string;
begin
        try
            vector := Self.downloadableItem.toVector();
            TDownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().insert(vector);
            success := 'Successfully inserted ' + TJava.ToString(Self.downloadableItem.getId()) + ' into downloaditems table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to insert ' + TJava.ToString(Self.downloadableItem.getId()) + ' into downloaditems table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'inserts()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TDownloadItemsRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            TDownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().delete_(Self.downloadableItem.getId());
            success := 'Successfully deleted';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to delete';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TDownloadItemsRequestHelper.update: string;
var
  success: string;
  values: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Update Successful';
            values := Self.downloadableItem.toHashMap();
            TDownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance().update(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(TJava.ToString((Self.downloadableItem.getId()) + (TCommonSeps.getInstance().SPACE)) + success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update: ' + TJava.ToString(Self.downloadableItem.getId());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

