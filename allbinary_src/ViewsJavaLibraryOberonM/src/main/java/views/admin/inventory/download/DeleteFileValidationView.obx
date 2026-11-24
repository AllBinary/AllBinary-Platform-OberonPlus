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
unit DeleteFileValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, DownloadableInventoryItemView;

type
  {AB:TYPES}
  TDeleteFileValidationView = class(TDownloadableInventoryItemView, IValidationComponentInterface)
  public
    downloadItemId: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure getFormData; virtual;
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, BasicItemData, DownloadItemData, InventoryEntity, InventoryEntityFactory, DownloadItemsEntity, DownloadItemsEntityFactory, RequestParams, StringMaker, StringUtil;


{AB:CODE}

procedure TDeleteFileValidationView.InitFields;
begin
  
end;

function TDeleteFileValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDeleteFileValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_, TStringUtil.getInstance().EMPTY_STRING);
        InitFields;
        Self.getFormData();
end;
    

// throws Exception
procedure TDeleteFileValidationView.getFormData;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TRequestParams.Create(Self.request).toHashMap();
        if (hashMap_) = (nil) then begin
            raise SysUtils.Exception.Create('No Request Params Found');
        end;
        Self.id := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.basicItemData.ID))));
        Self.downloadItemId := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TDownloadItemData.ID))));
end;
    

function TDeleteFileValidationView.isValid: Boolean;
var
  inventoryEntity_: TInventoryEntity;
  downloadItemsEntity_: TDownloadItemsEntity;
  vector: TBasicArrayList;
begin
        try
            if ((Self.id) = (nil)) or (not (TJava.IsNumber(Self.id))) then begin
                Exit(False);
            end;
            inventoryEntity_ := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
            Self.itemInterface := inventoryEntity_.getItem(Self.id);
            if (Self.itemInterface) = (nil) then begin
                Exit(False);
            end;
            downloadItemsEntity_ := TDownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance();
            vector := downloadItemsEntity_.getForItem(Self.id, Self.downloadItemId);
            if (vector.size()) <> (1) then begin
                Exit(False);
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

function TDeleteFileValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TDeleteFileValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TDeleteFileValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
  downloadItemsEntity_: TDownloadItemsEntity;
  vector: TBasicArrayList;
begin
        try
            stringBuffer := TStringMaker.Create();
            if ((Self.id) = (nil)) or (not (TJava.IsNumber(Self.id))) then begin
                stringBuffer.append('Id is not valid.<br />');
            end;
            if TJava.IsNull(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.id)) then begin
                stringBuffer.append('Item does not exist.<br />');
            end;
            downloadItemsEntity_ := TDownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance();
            vector := downloadItemsEntity_.getForItem(Self.id, Self.downloadItemId);
            if (vector.size()) = (0) then begin
                stringBuffer.append('DownloadItem does not exist.<br />');
            end;
            if (vector.size()) > (1) then begin
                stringBuffer.append('To Many DownloadItems exist.<br />');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            Exit('Unkown Validation Error.<br />');
            end;
        end;
end;
    

// throws Exception
function TDeleteFileValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

