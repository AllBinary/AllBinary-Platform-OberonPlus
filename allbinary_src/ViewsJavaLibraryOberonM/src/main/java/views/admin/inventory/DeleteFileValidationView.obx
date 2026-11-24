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
unit DeleteFileValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, InventoryItemView;

type
  {AB:TYPES}
  TDeleteFileValidationView = class(TInventoryItemView, IValidationComponentInterface)
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
  BasicItemData, InventoryEntityFactory, RequestParams, StringMaker, StringUtil;


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
end;
    

function TDeleteFileValidationView.isValid: Boolean;
begin
        try
            if ((Self.id) = ('')) or (not (TJava.IsNumber(Self.id))) then begin
                Exit(False);
            end;
            Self.itemInterface := TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.id);
            if (Self.itemInterface) = (nil) then begin
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
begin
        try
            stringBuffer := TStringMaker.Create();
            if ((Self.id) = ('')) or (not (TJava.IsNumber(Self.id))) then begin
                stringBuffer.append('Id is not valid.<br />');
            end;
            if TJava.IsNull(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.id)) then begin
                stringBuffer.append('Item does not exist.<br />');
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

