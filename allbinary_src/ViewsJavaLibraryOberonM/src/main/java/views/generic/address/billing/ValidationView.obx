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
unit ValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, BillingAddressesView;

type
  {AB:TYPES}
  TValidationView = class(TBillingAddressesView, IValidationComponentInterface)
  public
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
  BillingAddressesEntity;


{AB:CODE}

function TValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

function TValidationView.isValid: Boolean;
var
  billingAddressesEntity_: TBillingAddressesEntity;
begin
        billingAddressesEntity_ := TBillingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
        Self.streetAddresses := billingAddressesEntity_.get();
        if (Self.streetAddresses) = (nil) then begin
            Exit(False);
        end;
        if (Self.streetAddresses.size()) < (1) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TValidationView.validationInfo: string;
begin
        Exit('No Billing Addresses to display.<br />');
end;
    

function TValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

