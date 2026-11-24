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
unit ShippingAddressView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StreetAddress, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TShippingAddressView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    streetAddress: TStreetAddress;
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
  StreetAddressData, TransformInfoHttpInterface, StatesView;


{AB:CODE}

procedure TShippingAddressView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TShippingAddressView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TShippingAddressView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        Self.request := THttpServletRequest(TJava.ToObject(httpTransformInfoInterface.getPageContext().getRequest()));
end;
    

function TShippingAddressView.getRequest: THttpServletRequest;
begin
        Exit(Self.request);
end;
    

// throws Exception
function TShippingAddressView.toXmlNode(document_: TDocument): TNode;
var
  formNode: TNode;
begin
        try
            formNode := document_.createElement(TStreetAddressData.FORM);
            formNode.appendChild(Self.streetAddress.toXmlNode(document_));
            Exit(formNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TShippingAddressView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
        Self.addDomNodeInterface((TJava.ToObject(TStatesView.Create()) as IDomNodeInterface));
end;
    

// throws Exception
function TShippingAddressView.view: string;
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

