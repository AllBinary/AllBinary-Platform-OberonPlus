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
// package views.generic.address.shipping
unit AddTaxValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, ShippingAddressView;

type
  {AB:TYPES}
  TAddTaxValidationView = class(TShippingAddressView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
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
  BasicArrayList, BasicArrayListD, StoreFrontFactory, StoreFrontInterface, ShippingAddressData, StreetAddress, TaxFactory, TaxModuleInterface, ShippingAddressesEntity, StringMaker;


{AB:CODE}

procedure TAddTaxValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TAddTaxValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAddTaxValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

// throws Exception
function TAddTaxValidationView.isValid: Boolean;
var
  storeFrontInterface_: IStoreFrontInterface;
  taxInterface: ITaxModuleInterface;
  billingAddressesEntity: TShippingAddressesEntity;
  streetAddressList: TBasicArrayList;
  size: Integer;
  aStreetAddress: TStreetAddress;
  index: Integer;
begin
        try
            Self.streetAddress := TStreetAddress.Create(Self.getRequest());
            storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getTransformInfoInterface().getStoreName());
            taxInterface := TTaxFactory.getInstance().getInstance(Self.abeClientInformation, storeFrontInterface_);
            if (taxInterface) = (nil) then begin
                Exit(False);
            end;
            if (taxInterface.isValid(Self.streetAddress, storeFrontInterface_)) = (False) then begin
                Exit(False);
            end;
            billingAddressesEntity := TShippingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
            streetAddressList := billingAddressesEntity.get();
            if (streetAddressList) = (nil) then begin
                Exit(False);
            end;
            size := streetAddressList.size();
            for index := 0 to size - 1 do begin
                aStreetAddress := TStreetAddress(TJava.ToObject(streetAddressList.get(index)));
                if (aStreetAddress.getName().compareTo(TShippingAddressData.TAX)) = (0) then begin
                    Exit(False);
                end;
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws Exception
function TAddTaxValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
  storeFrontInterface_: IStoreFrontInterface;
  taxInterface: ITaxModuleInterface;
  billingAddressesEntity: TShippingAddressesEntity;
  streetAddressList: TBasicArrayList;
  size: Integer;
  aStreetAddress: TStreetAddress;
  index: Integer;
begin
        try
            stringBuffer := TStringMaker.Create();
            storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getTransformInfoInterface().getStoreName());
            taxInterface := TTaxFactory.getInstance().getInstance(Self.abeClientInformation, storeFrontInterface_);
            if (taxInterface) = (nil) then begin
                stringBuffer.append('Unable to Load Tax Component<br/>');
            end else begin
                if (taxInterface.isValid(Self.streetAddress, storeFrontInterface_)) = (False) then begin
                    stringBuffer.append('Unable to validate address with Tax Component<br/>');
                end;
            end;
            billingAddressesEntity := TShippingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
            streetAddressList := billingAddressesEntity.get();
            size := streetAddressList.size();
            for index := 0 to size - 1 do begin
                aStreetAddress := TStreetAddress(TJava.ToObject(streetAddressList.get(index)));
                if (aStreetAddress.getName().compareTo(TShippingAddressData.TAX)) = (0) then begin
                    stringBuffer.append('Not a valid tax location<br/>');
                end;
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to create validateInfo', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Creating ValidationInfo');
            end;
        end;
end;
    

function TAddTaxValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TAddTaxValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TAddTaxValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

