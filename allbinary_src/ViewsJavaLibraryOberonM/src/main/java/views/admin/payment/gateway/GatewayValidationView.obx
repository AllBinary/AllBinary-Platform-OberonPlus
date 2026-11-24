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
// package views.admin.payment.gateway
unit GatewayValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TGatewayValidationView = class(THttpStoreComponentView, IValidationComponentInterface)
  public
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function toXmlDoc: TDocument; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function view: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  GatewayView;


{AB:CODE}

function TGatewayValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGatewayValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

function TGatewayValidationView.isValid: Boolean;
begin
        Exit(True);
end;
    

function TGatewayValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TGatewayValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TGatewayValidationView.validationInfo: string;
begin
        raise SysUtils.Exception.Create('validationInfo');
end;
    

function TGatewayValidationView.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TGatewayValidationView.toXmlNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TGatewayValidationView.view: string;
begin
        Exit(TGatewayView.Create(Self.getTransformInfoInterface()).view());
end;
    

// throws Exception
function TGatewayValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

