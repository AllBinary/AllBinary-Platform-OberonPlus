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
// package org.allbinary.business.user.commerce.shipping.modules
unit PickUpShippingModuleView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Node, Document, PickUpShippingModule;

type
  {AB:TYPES}
  TPickUpShippingModuleView = class(TPickUpShippingModule, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function view: string; virtual;
  end;

implementation
uses
  ShippingMethodData, ModDomHelper;


{AB:CODE}

procedure TPickUpShippingModuleView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TPickUpShippingModuleView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPickUpShippingModuleView.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TPickUpShippingModuleView.isValid: Boolean;
begin
        Exit(nil);
end;
    

function TPickUpShippingModuleView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TPickUpShippingModuleView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TPickUpShippingModuleView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TPickUpShippingModuleView.toXmlNode(document_: TDocument): TNode;
var
  shippingMethodNode: TNode;
begin
        try
            shippingMethodNode := document_.createElement(TShippingMethodData.NAME);
            shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TShippingMethodData.NAME, Self.getName()));
            shippingMethodNode.appendChild(TModDomHelper.createNameValueNodes(document_, TShippingMethodData.DESCRIPTION, Self.getDescription()));
            Exit(shippingMethodNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TPickUpShippingModuleView.validationInfo: string;
begin
        Exit(nil);
end;
    

function TPickUpShippingModuleView.view: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

