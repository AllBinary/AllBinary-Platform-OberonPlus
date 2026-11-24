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
unit InventoryItemViewParentTagHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RequestMapInterface, HelperTag, InventoryItemView, DownloadableInventoryItemView;

type
  {AB:TYPES}
  TInventoryItemViewParentTagHelper = class(TObject)
  public
    class var instance: TInventoryItemViewParentTagHelper;
    constructor Create;
        class function getInstance: TInventoryItemViewParentTagHelper; static;
        function getInventoryItemView(inventoryTag: THelperTag): TInventoryItemView; virtual;
        function getDownloadableInventoryItemView(inventoryTag: THelperTag): TDownloadableInventoryItemView; virtual;
        function getRequestMapInterface(inventoryTag: THelperTag): IRequestMapInterface; virtual;
        procedure checkForValidationViewHelper(helperObject: TObject); virtual;
  end;

implementation
uses
  StringMaker, TransformInterface, ValidationViewHelper;


{AB:CODE}

constructor TInventoryItemViewParentTagHelper.Create;
begin
  inherited Create;
end;
    

class function TInventoryItemViewParentTagHelper.getInstance: TInventoryItemViewParentTagHelper;
begin
        Exit(TInventoryItemViewParentTagHelper.instance);
end;
    

// throws Exception
function TInventoryItemViewParentTagHelper.getInventoryItemView(inventoryTag: THelperTag): TInventoryItemView;
var
  validationViewHelper_: TValidationViewHelper;
  viewObject: ITransformInterface;
  stringBuffer: TStringMaker;
begin
        if (inventoryTag) <> (nil) then begin
            Self.checkForValidationViewHelper(inventoryTag.getHelper());
            validationViewHelper_ := TValidationViewHelper(TJava.ToObject(inventoryTag.getHelper()));
            viewObject := validationViewHelper_.getViewObject();
            if (viewObject.getTypeId()) <> (TInventoryItemView.TYPE_ID) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Must have ');
                stringBuffer.append('InventoryItemView and not: ');
                stringBuffer.append(TJava.ToObject(inventoryTag.getHelper()).ClassType.ClassName);
                raise SysUtils.Exception.Create(stringBuffer.toString());
            end;
            Exit(TInventoryItemView(TJava.ToObject(viewObject)));
        end else begin
            raise SysUtils.Exception.Create('Must have parent tag.');
        end;
end;
    

// throws Exception
function TInventoryItemViewParentTagHelper.getDownloadableInventoryItemView(inventoryTag: THelperTag): TDownloadableInventoryItemView;
var
  validationViewHelper_: TValidationViewHelper;
  viewObject: ITransformInterface;
  stringBuffer: TStringMaker;
begin
        if (inventoryTag) <> (nil) then begin
            Self.checkForValidationViewHelper(inventoryTag.getHelper());
            validationViewHelper_ := TValidationViewHelper(TJava.ToObject(inventoryTag.getHelper()));
            viewObject := validationViewHelper_.getViewObject();
            if (viewObject.getTypeId()) <> (TDownloadableInventoryItemView.TYPE_ID) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Must have ');
                stringBuffer.append('DownloadableInventoryItemView and not: ');
                stringBuffer.append(TJava.ToObject(inventoryTag.getHelper()).ClassType.ClassName);
                raise SysUtils.Exception.Create(stringBuffer.toString());
            end;
            Exit(TDownloadableInventoryItemView(TJava.ToObject(viewObject)));
        end else begin
            raise SysUtils.Exception.Create('Must have parent tag.');
        end;
end;
    

// throws Exception
function TInventoryItemViewParentTagHelper.getRequestMapInterface(inventoryTag: THelperTag): IRequestMapInterface;
var
  validationViewHelper_: TValidationViewHelper;
  viewObject: ITransformInterface;
  stringBuffer: TStringMaker;
begin
        if (inventoryTag) <> (nil) then begin
            Self.checkForValidationViewHelper(inventoryTag.getHelper());
            validationViewHelper_ := TValidationViewHelper(TJava.ToObject(inventoryTag.getHelper()));
            viewObject := validationViewHelper_.getViewObject();
            if ((viewObject.getTypeId()) <> (TInventoryItemView.TYPE_ID)) and ((viewObject.getTypeId()) <> (TDownloadableInventoryItemView.TYPE_ID)) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Must have ');
                stringBuffer.append('specific TYPE_ID and not: ');
                stringBuffer.append(TJava.ToObject(inventoryTag.getHelper()).ClassType.ClassName);
                raise SysUtils.Exception.Create(stringBuffer.toString());
            end;
            Exit((TJava.ToObject(viewObject) as IRequestMapInterface));
        end else begin
            raise SysUtils.Exception.Create('Must have parent tag.');
        end;
end;
    

// throws Exception
procedure TInventoryItemViewParentTagHelper.checkForValidationViewHelper(helperObject: TObject);
var
  stringBuffer: TStringMaker;
begin
        if not (((TJava.ToObject(helperObject) is TValidationViewHelper))) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Must have ');
            stringBuffer.append('ValidationViewHelper');
            stringBuffer.append('and not: ');
            stringBuffer.append(TJava.ToObject(helperObject).ClassType.ClassName);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInventoryItemViewParentTagHelper.instance := TInventoryItemViewParentTagHelper.Create();
  {AB:END}

end.

