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
// package views.generic.address.billing
unit DeleteValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, BillingAddressView;

type
  {AB:TYPES}
  TDeleteValidationView = class(TBillingAddressView, IValidationComponentInterface)
  public
    value: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  StreetAddressData, BillingAddressesEntity, TransformInfoHttpInterface;


{AB:CODE}

procedure TDeleteValidationView.InitFields;
begin
  
end;

function TDeleteValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDeleteValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        Self.value := httpTransformInfoInterface.getPageContext().getRequest().getParameter(TStreetAddressData.ID);
end;
    

function TDeleteValidationView.isValid: Boolean;
var
  billingAddressesEntity_: TBillingAddressesEntity;
begin
        if not TJava.IsNull(Self.getWeblisketSession().getUserName()) then begin
            Exit(False);
        end;
        billingAddressesEntity_ := TBillingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
        Self.streetAddress := billingAddressesEntity_.get(Self.value);
        if (Self.streetAddress) = (nil) then begin
            Exit(False);
        end;
        Exit(Self.streetAddress.isValid());
end;
    

function TDeleteValidationView.validationInfo: string;
begin
        Exit(Self.streetAddress.validationInfo());
end;
    

function TDeleteValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TDeleteValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TDeleteValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

