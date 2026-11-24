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
// package org.allbinary.business.user.modules.configuration
unit UserConfigurationDomDocumentMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomDocumentMappingInterface, Document, UserConfigurationInterface;

type
  {AB:TYPES}
  TUserConfigurationDomDocumentMapping = class(TInterfacedObject, IDomDocumentMappingInterface)
  public
    userConfigurationInterface: IUserConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(userConfigurationInterface_: IUserConfigurationInterface);
        function toXmlDoc: TDocument; virtual;
        function toDomDocumentString: string; virtual;
  end;

implementation
uses
  UserConfigurationView, DomDocumentHelper, XmlDocumentHelper, Node;


{AB:CODE}

procedure TUserConfigurationDomDocumentMapping.InitFields;
begin
  
end;

function TUserConfigurationDomDocumentMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserConfigurationDomDocumentMapping.Create(userConfigurationInterface_: IUserConfigurationInterface);
begin
    inherited Create;
    InitFields;
        Self.userConfigurationInterface := userConfigurationInterface_;
end;
    

// throws Exception
function TUserConfigurationDomDocumentMapping.toXmlDoc: TDocument;
var
  document_: TDocument;
  node_: TNode;
begin
        document_ := TDomDocumentHelper.create_();
        node_ := TUserConfigurationView.Create(Self.userConfigurationInterface).toXmlNode(document_);
        document_.appendChild(node_);
        Exit(document_);
end;
    

// throws Exception
function TUserConfigurationDomDocumentMapping.toDomDocumentString: string;
begin
        Exit(TXmlDocumentHelper.toString(Self.toXmlDoc()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

