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
// package views.admin.inventory.download
unit DownloadableInventoryItemView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicItemData, ItemInterface, DownloadableItem, RequestMapInterface, LogUtil, TransformInfoInterface, FileItem, HttpStoreComponentView;

type
  {AB:TYPES}
  TDownloadableInventoryItemView = class(THttpStoreComponentView, IRequestMapInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    request: THttpServletRequest;
    id: string;
    itemInterface: IItemInterface;
    downloadableItem: TDownloadableItem;
    requestHashMap: TJavaHashMap<TObject, TObject>;
    class var TYPE_ID: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; empty: string); overload;
        function getTypeId: Integer; virtual;
        procedure getFormData;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
        procedure processFile(fileItem_: TFileItem); virtual;
        procedure unzip(fileItem_: TFileItem); virtual;
        function getItemFilePath: string;
        procedure setRequestHashMap(requestHashMap: TJavaHashMap<TObject, TObject>);
        function getRequestHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getDownloadableItem: TDownloadableItem; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFrontFactory, StoreFrontInterface, BasicItemView, DownloadableItemView, URLGLOBALS, StdUtil, MultipartRequestParams, AbFile, FilePathData, FileUtil, ZipFileUtil, StringMaker;


{AB:CODE}

procedure TDownloadableInventoryItemView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
end;

function TDownloadableInventoryItemView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDownloadableInventoryItemView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
        Self.getFormData();
end;
    

constructor TDownloadableInventoryItemView.Create(transformInfoInterface_: ITransformInfoInterface; empty: string);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
end;
    

function TDownloadableInventoryItemView.getTypeId: Integer;
begin
        Exit(TDownloadableInventoryItemView.TYPE_ID);
end;
    

// throws Exception
procedure TDownloadableInventoryItemView.getFormData;
begin
        Self.setRequestHashMap(TMultipartRequestParams.Create(Self.request).toHashMap());
        Self.id := TJava.UnboxString(TJava.ToObject(Self.getRequestHashMap().get(Self.basicItemData.ID)));
end;
    

procedure TDownloadableInventoryItemView.addDomNodeInterfaces;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        if (Self.downloadableItem) <> (nil) then begin
            vector.add(TJava.Box(TDownloadableItemView.Create(Self.downloadableItem)));
        end;
        Self.addDomNodeInterface(TBasicItemView.Create(Self.itemInterface, vector));
end;
    

// throws Exception
function TDownloadableInventoryItemView.view: string;
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
procedure TDownloadableInventoryItemView.processFile(fileItem_: TFileItem);
var
  fileName: string;
  fullPath: string;
  itemResourceFile: TAbFile;
  stringBuffer: TStringMaker;
  file_: TAbFile;
  byteArray: TArray<ShortInt>;
begin
        fileName := fileItem_.getName();
        fullPath := Self.getItemFilePath();
        itemResourceFile := TAbFile.createAbFile(fullPath);
        itemResourceFile.mkdir();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(fullPath);
        stringBuffer.append(fileName);
        Self.logUtil.putF('FileName: ' + fileName, TJava.Box(Self), 'processFile()');
        file_ := TAbFile.createAbFile(stringBuffer.toString());
        Self.logUtil.putF(file_.getPath(), TJava.Box(Self), 'processFiles()');
        file_.createNewFile();
        byteArray := fileItem_.get();
        TFileUtil.getInstance().write(TByteArrayInputStream.Create(byteArray), file_);
end;
    

// throws Exception
procedure TDownloadableInventoryItemView.unzip(fileItem_: TFileItem);
var
  fileName: string;
  fullPath: string;
  stringBuffer: TStringMaker;
  file_: TAbFile;
begin
        fileName := fileItem_.getName();
        fullPath := Self.getItemFilePath();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(fullPath);
        stringBuffer.append(fileName);
        Self.logUtil.putF('FileName: ' + fileName, TJava.Box(Self), 'unzip()');
        file_ := TAbFile.createAbFile(stringBuffer.toString());
        Self.logUtil.putF(file_.getPath(), TJava.Box(Self), 'unzip()');
        TZipFileUtil.getInstance().unzip(fullPath, file_, fileName);
end;
    

function TDownloadableInventoryItemView.getItemFilePath: string;
var
  storeFrontInterface_: IStoreFrontInterface;
  filePathData_: TFilePathData;
  stringBuffer: TStringMaker;
begin
        storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
        filePathData_ := TFilePathData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getWebappPath());
        stringBuffer.append(storeFrontInterface_.getCurrentHostNamePath());
        stringBuffer.append(Self.itemInterface.getCategory());
        stringBuffer.appendchar(filePathData_.SEPARATORCHAR);
        stringBuffer.append(Self.itemInterface.getId());
        stringBuffer.appendchar(filePathData_.SEPARATORCHAR);
        stringBuffer.append(Self.downloadableItem.getId());
        stringBuffer.appendchar(filePathData_.SEPARATORCHAR);
        Exit(stringBuffer.toString());
end;
    

procedure TDownloadableInventoryItemView.setRequestHashMap(requestHashMap: TJavaHashMap<TObject, TObject>);
begin
        Self.requestHashMap := requestHashMap;
end;
    

function TDownloadableInventoryItemView.getRequestHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.requestHashMap);
end;
    

function TDownloadableInventoryItemView.getDownloadableItem: TDownloadableItem;
begin
        Exit(Self.downloadableItem);
end;

initialization
  {AB:INITIALIZATION}
  TDownloadableInventoryItemView.TYPE_ID := 11;
  {AB:END}

end.

