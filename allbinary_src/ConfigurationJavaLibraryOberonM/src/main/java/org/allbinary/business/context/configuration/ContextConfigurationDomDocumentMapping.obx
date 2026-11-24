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
// package org.allbinary.business.context.configuration
unit ContextConfigurationDomDocumentMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomDocumentMappingInterface, Document, ContextConfigurationInterface;

type
  {AB:TYPES}
  TContextConfigurationDomDocumentMapping = class(TInterfacedObject, IDomDocumentMappingInterface)
  public
    contextConfigurationInterface: IContextConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(contextConfigurationInterface_: IContextConfigurationInterface);
        function toXmlDoc: TDocument; virtual;
        function toDomDocumentString: string; virtual;
  end;

implementation
uses
  ContextConfigurationView, DomDocumentHelper, XmlDocumentHelper, Node;


{AB:CODE}

procedure TContextConfigurationDomDocumentMapping.InitFields;
begin
  
end;

function TContextConfigurationDomDocumentMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TContextConfigurationDomDocumentMapping.Create(contextConfigurationInterface_: IContextConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.contextConfigurationInterface := contextConfigurationInterface_;
end;
    

// throws Exception
function TContextConfigurationDomDocumentMapping.toXmlDoc: TDocument;
var
  document_: TDocument;
  node_: TNode;
begin
        document_ := TDomDocumentHelper.create_();
        node_ := TContextConfigurationView.Create(Self.contextConfigurationInterface).toXmlNode(document_);
        document_.appendChild(node_);
        Exit(document_);
end;
    

// throws Exception
function TContextConfigurationDomDocumentMapping.toDomDocumentString: string;
begin
        Exit(TXmlDocumentHelper.toString(Self.toXmlDoc()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

