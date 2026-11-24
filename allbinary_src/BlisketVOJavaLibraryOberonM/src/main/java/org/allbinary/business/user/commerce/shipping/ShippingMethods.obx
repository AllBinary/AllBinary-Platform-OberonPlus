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
// package org.allbinary.business.user.commerce.shipping
unit ShippingMethods;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, ShippingInterface, LogUtil, AbeClientInformationInterface, CommonStrings, ShippingMethodsInterface;

type
  {AB:TYPES}
  TShippingMethods = class(TInterfacedObject, IShippingMethodsInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    shippingVector: TBasicArrayList;
    defaultShippingMethodInterface: IShippingInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface);
        function get: TBasicArrayList; virtual;
        function getShippingInterface(name: string): IShippingInterface; virtual;
        function getDefault: IShippingInterface; virtual;
  end;

implementation
uses
  ShippingMethodsFactory, BasicArrayListD;


{AB:CODE}

procedure TShippingMethods.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TShippingMethods.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TShippingMethods.Create(abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface);
begin
    inherited Create;
    InitFields;
        Self.defaultShippingMethodInterface := TShippingMethodsFactory.Create(abeClientInformation, storeFrontInterface_).getDefaultInstance();
        Self.shippingVector := TShippingMethodsFactory.Create(abeClientInformation, storeFrontInterface_).getInstance();
end;
    

function TShippingMethods.get: TBasicArrayList;
begin
        Exit(Self.shippingVector);
end;
    

// throws Exception
function TShippingMethods.getShippingInterface(name: string): IShippingInterface;
var
  shipping: IShippingInterface;
  size: Integer;
  index: Integer;
  error: string;
begin
        
        size := Self.shippingVector.size();
        for index := 0 to size - 1 do begin
            shipping := (TJava.ToObject(Self.shippingVector.get(index)) as IShippingInterface);
            if (CompareStr(name, shipping.getName())) = (0) then begin
                Exit(shipping);
            end;
        end;
        error := 'Error Finding Shipping: ' + name;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SHIPPINGERROR) then begin
            Self.logUtil.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getShippingInterface(String name)');
        end;
        raise SysUtils.Exception.Create(error);
end;
    

// throws Exception
function TShippingMethods.getDefault: IShippingInterface;
begin
        Exit(Self.defaultShippingMethodInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

