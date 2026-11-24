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
unit NewValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, DownloadableInventoryItemView;

type
  {AB:TYPES}
  TNewValidationView = class(TDownloadableInventoryItemView, IValidationComponentInterface)
  public
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  BasicItem, ItemInterface, DownloadableItem, StringUtil;


{AB:CODE}

function TNewValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNewValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_, TStringUtil.getInstance().EMPTY_STRING);
        Self.itemInterface := (TJava.ToObject(TBasicItem.Create()) as IItemInterface);
        Self.downloadableItem := TDownloadableItem.Create(Self.itemInterface.getId());
end;
    

function TNewValidationView.isValid: Boolean;
begin
        try
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

function TNewValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TNewValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TNewValidationView.validationInfo: string;
begin
        Exit('Error Creating New Downloadable Item');
end;
    

// throws Exception
function TNewValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

