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
// package views.admin.inventory
unit InventoryItemView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicItemData, ItemInterface, RequestMapInterface, LogUtil, MediaData, TransformInfoInterface, HttpStoreComponentView;

type
  {AB:TYPES}
  TInventoryItemView = class(THttpStoreComponentView, IRequestMapInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    request: THttpServletRequest;
    imageFileName: string;
    mediaData: TMediaData;
    itemInterface: IItemInterface;
    downloadableItemVector: TBasicArrayList;
    requestHashMap: TJavaHashMap<TObject, TObject>;
    class var TYPE_ID: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; empty: string); overload;
        function getTypeId: Integer; virtual;
        procedure getFormData;
        procedure addDomNodeInterfaces; virtual;
        function getItemInterface: IItemInterface; virtual;
        function view: string; virtual;
        procedure processImageFiles; virtual;
        procedure setRequestHashMap(requestHashMap: TJavaHashMap<TObject, TObject>);
        function getRequestHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  InventoryUploadMediaUtil, BasicArrayListD, StoreFrontFactory, StoreFrontInterface, BasicItem, BasicItemView, DownloadableItem, DownloadableItemView, StdUtil, HttpFileUploadUtil, HttpRequestUtil, MultipartRequestParams, AbPathData, PathUtil, StringMaker, FileItem;


{AB:CODE}

procedure TInventoryItemView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
end;

function TInventoryItemView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInventoryItemView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
        Self.getFormData();
end;
    

constructor TInventoryItemView.Create(transformInfoInterface_: ITransformInfoInterface; empty: string);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
end;
    

function TInventoryItemView.getTypeId: Integer;
begin
        Exit(TInventoryItemView.TYPE_ID);
end;
    

// throws Exception
procedure TInventoryItemView.getFormData;
var
  imageFileItemObject: TObject;
  fileItem_: TFileItem;
  pathData: TAbPathData;
  pathUtil_: TPathUtil;
  stringBuffer: TStringMaker;
begin
        Self.setRequestHashMap(TMultipartRequestParams.Create(Self.request).toHashMap());
        imageFileItemObject := TJava.Box(Self.getRequestHashMap().get(Self.basicItemData.IMAGE));
        if THttpFileUploadUtil.getInstance().isValid(imageFileItemObject) then begin
            fileItem_ := TFileItem(TJava.ToObject(imageFileItemObject));
            if ((fileItem_) <> (nil)) and ((fileItem_.getSize()) > (1)) then begin
                Self.imageFileName := THttpRequestUtil.getInstance().generateFileName(fileItem_.getName());
                pathData := TAbPathData.getInstance();
                pathUtil_ := TPathUtil.getInstance();
                Self.mediaData := TMediaData.get(pathData.getExtension(Self.imageFileName));
                Self.imageFileName := pathUtil_.getWithoutExtension(Self.imageFileName);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Uploaded File Data: ');
                    stringBuffer.append(Self.imageFileName);
                    stringBuffer.append(' Extension: ');
                    stringBuffer.append(Self.mediaData.getName());
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'getFormData()');
                end;
            end;
        end;
        Self.itemInterface := (TJava.ToObject(TBasicItem.Create(Self.getRequestHashMap())) as IItemInterface);
end;
    

procedure TInventoryItemView.addDomNodeInterfaces;
var
  vector: TBasicArrayList;
  downloadableItem_: TDownloadableItem;
  size: Integer;
  index: Integer;
begin
        vector := TBasicArrayListD.Create();
        
        size := Self.downloadableItemVector.size();
        for index := 0 to size - 1 do begin
            downloadableItem_ := TDownloadableItem(TJava.ToObject(Self.downloadableItemVector.get(index)));
            vector.add(TJava.Box(TDownloadableItemView.Create(downloadableItem_)));
        end;
        Self.addDomNodeInterface(TBasicItemView.Create(Self.itemInterface, vector));
end;
    

function TInventoryItemView.getItemInterface: IItemInterface;
begin
        Exit(Self.itemInterface);
end;
    

// throws Exception
function TInventoryItemView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TInventoryItemView.processImageFiles;
var
  set_: ISet;
  fieldNameArray: TArray<TObject>;
  size: Integer;
  fieldName: string;
  storeFrontInterface_: IStoreFrontInterface;
  inventoryUploadMediaUtil_: TInventoryUploadMediaUtil;
  fileItem_: TFileItem;
  index: Integer;
begin
        set_ := Self.getRequestHashMap().keySet();
        fieldNameArray := set_.toArray();
        size := System.Length(fieldNameArray);
        for index := 0 to size - 1 do begin
            fieldName := TJava.UnboxString(TJava.ToObject(fieldNameArray[index]));
            if (CompareStr(fieldName, Self.basicItemData.IMAGE)) = (0) then begin
                storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
                inventoryUploadMediaUtil_ := TInventoryUploadMediaUtil.Create(storeFrontInterface_, Self.itemInterface);
                fileItem_ := TFileItem(TJava.ToObject(Self.getRequestHashMap().get(Self.basicItemData.IMAGE)));
                Self.itemInterface := inventoryUploadMediaUtil_.saveFiles(fileItem_.get(), Self.imageFileName, Self.mediaData);
            end;
        end;
end;
    

procedure TInventoryItemView.setRequestHashMap(requestHashMap: TJavaHashMap<TObject, TObject>);
begin
        Self.requestHashMap := requestHashMap;
end;
    

function TInventoryItemView.getRequestHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.requestHashMap);
end;

initialization
  {AB:INITIALIZATION}
  TInventoryItemView.TYPE_ID := 10;
  {AB:END}

end.

