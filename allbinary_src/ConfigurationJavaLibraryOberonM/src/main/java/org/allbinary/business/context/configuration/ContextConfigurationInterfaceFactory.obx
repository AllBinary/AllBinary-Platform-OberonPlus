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
unit ContextConfigurationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document, ContextConfigurationInterface;

type
  {AB:TYPES}
  TContextConfigurationInterfaceFactory = class(TObject)
  public
    class var instance: TContextConfigurationInterfaceFactory;
        class function getInstance: TContextConfigurationInterfaceFactory; overload; static;
        constructor Create;
        function getInstance(document_: TDocument): IContextConfigurationInterface; overload; virtual;
        function getInstance(contextName: string): IContextConfigurationInterface; overload; virtual;
  end;

implementation
uses
  ContextConfigurationData, ContextConfigurationView, ContextConfigurationPathUtil, DomSearchHelper, DomDocumentHelper, CryptFileReader, AbPath, Node;


{AB:CODE}
    

class function TContextConfigurationInterfaceFactory.getInstance: TContextConfigurationInterfaceFactory;
begin
        Exit(TContextConfigurationInterfaceFactory.instance);
end;
    

constructor TContextConfigurationInterfaceFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TContextConfigurationInterfaceFactory.getInstance(document_: TDocument): IContextConfigurationInterface;
var
  contextConfigurationData_: TContextConfigurationData;
  contextConfigurationNode: TNode;
begin
        contextConfigurationData_ := TContextConfigurationData.getInstance();
        contextConfigurationNode := TDomSearchHelper.getNode(contextConfigurationData_.NAME, document_.getChildNodes());
        Exit((TJava.ToObject(TContextConfigurationView.Create(contextConfigurationNode).getContextConfigurationInterface()) as IContextConfigurationInterface));
end;
    

// throws Exception
function TContextConfigurationInterfaceFactory.getInstance(contextName: string): IContextConfigurationInterface;
var
  abPath_: TAbPath;
  contextConfigurationData_: TContextConfigurationData;
  documentString: string;
  document_: TDocument;
begin
        abPath_ := TContextConfigurationPathUtil.getAbPath(contextName);
        contextConfigurationData_ := TContextConfigurationData.getInstance();
        documentString := TCryptFileReader.Create(contextConfigurationData_.UNCRYPTED_EXTENSION, contextConfigurationData_.ENCRYPTED_EXTENSION).get(abPath_);
        document_ := TDomDocumentHelper.create_(documentString);
        Exit(Self.getInstance(document_));
end;

initialization
  {AB:INITIALIZATION}
  TContextConfigurationInterfaceFactory.instance := TContextConfigurationInterfaceFactory.Create();
  {AB:END}

end.

