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
unit EditValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, InventoryItemView;

type
  {AB:TYPES}
  TEditValidationView = class(TInventoryItemView, IValidationComponentInterface)
  public
    id: string;
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
  BasicItemData, MoneyException, InventoryEntityFactory, DownloadItemsEntity, DownloadItemsEntityFactory, RequestParams, StringMaker, StringUtil;


{AB:CODE}

procedure TEditValidationView.InitFields;
begin
  
end;

function TEditValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEditValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_, TStringUtil.getInstance().EMPTY_STRING);
        InitFields;
        Self.getFormData();
end;
    

// throws Exception
procedure TEditValidationView.getFormData;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TRequestParams.Create(Self.request).toHashMap();
        if (hashMap_) = (nil) then begin
            raise SysUtils.Exception.Create('No Request Params Found');
        end;
        Self.id := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.basicItemData.ID))));
end;
    

// throws Exception
function TEditValidationView.isValid: Boolean;
var
  downloadable: Integer;
  downloadItemsEntity_: TDownloadItemsEntity;
begin
        if ((Self.id) = ('')) or (not (TJava.IsNumber(Self.id))) then begin
            Exit(False);
        end;
        Self.itemInterface := TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.id);
        if (Self.itemInterface) = (nil) then begin
            Exit(False);
        end;
        downloadable := StrToInt(Self.itemInterface.getDownloads());
        if (downloadable) <> (0) then begin
            downloadItemsEntity_ := TDownloadItemsEntityFactory.getInstance().getDownloadItemsEntityInstance();
            Self.downloadableItemVector := downloadItemsEntity_.getForItem(Self.itemInterface.getId());
        end;
        Exit(True);
end;
    

function TEditValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TEditValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws MoneyException
function TEditValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if ((Self.id) = ('')) or (not (TJava.IsNumber(Self.id))) then begin
            stringBuffer.append('Id is not valid.<br />');
        end;
        if TJava.IsNull(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.id)) then begin
            stringBuffer.append('Item does not exist.<br />');
        end;
        Exit(stringBuffer.toString());
end;
    

// throws Exception
function TEditValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

