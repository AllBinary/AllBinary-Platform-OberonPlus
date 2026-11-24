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
unit ShippingAddressesView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TShippingAddressesView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    streetAddressList: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function getRequest: THttpServletRequest; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasicArrayListD, ShippingAddressData, StreetAddress, StreetAddressData, ModDomHelper, TransformInfoHttpInterface;


{AB:CODE}

procedure TShippingAddressesView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TShippingAddressesView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TShippingAddressesView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        Self.request := THttpServletRequest(TJava.ToObject(httpTransformInfoInterface.getPageContext().getRequest()));
end;
    

function TShippingAddressesView.getRequest: THttpServletRequest;
begin
        Exit(Self.request);
end;
    

// throws Exception
function TShippingAddressesView.toXmlNode(document_: TDocument): TNode;
var
  billingAddressesNode: TNode;
  size: Integer;
  streetAddress_: TStreetAddress;
  index: Integer;
begin
        try
            billingAddressesNode := document_.createElement(TShippingAddressData.MULTIPLE);
            size := Self.streetAddressList.size();
            for index := 0 to size - 1 do begin
                streetAddress_ := TStreetAddress(TJava.ToObject(Self.streetAddressList.get(index)));
                billingAddressesNode.appendChild(streetAddress_.toXmlNode(document_));
            end;
            billingAddressesNode.appendChild(TModDomHelper.createNameValueNodes(document_, TStreetAddressData.NUMBEROFADDRESSES, Self.streetAddressList.size().toString()));
            Exit(billingAddressesNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TShippingAddressesView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TShippingAddressesView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

