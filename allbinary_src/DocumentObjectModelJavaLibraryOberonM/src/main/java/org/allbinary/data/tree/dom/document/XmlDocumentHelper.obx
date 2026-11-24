{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.data.tree.dom.document
unit XmlDocumentHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Document;

type
  {AB:TYPES}
  TXmlDocumentHelper = class(TObject)
  public
    logUtil: TLogUtil;
    INDENT_NUMBER: string;
    indent: Integer;
    ignoreDeclaration: Boolean;
    class var instance: TXmlDocumentHelper;
    procedure InitFields;
        class function getInstance: TXmlDocumentHelper; static;
        constructor Create;
        procedure init(indent: Integer; ignoreDeclaration: Boolean); virtual;
        function createTransformer(indent: Integer; ignoreDeclaration: Boolean): TTransformer; overload;
        function createTransformer: TTransformer; overload; virtual;
        function format(xmlString: string): string; virtual;
        function formatWithTransformer(xmlString: string; transformer_: TTransformer): string; virtual;
        class function toString(document_: TDocument): string; static;
  end;

implementation
uses
  BooleanFactory, CharacterSetData, InputSource;


{AB:CODE}

procedure TXmlDocumentHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.INDENT_NUMBER := 'indent-number';
  
  
end;
    

class function TXmlDocumentHelper.getInstance: TXmlDocumentHelper;
begin
        Exit(TXmlDocumentHelper.instance);
end;
    

constructor TXmlDocumentHelper.Create;
begin
    inherited Create;
    InitFields;
        Self.init(4, True);
end;
    

procedure TXmlDocumentHelper.init(indent: Integer; ignoreDeclaration: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.indent := indent;
        Self.ignoreDeclaration := ignoreDeclaration;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws TransformerConfigurationException
function TXmlDocumentHelper.createTransformer(indent: Integer; ignoreDeclaration: Boolean): TTransformer;
var
  booleanFactory_: TBooleanFactory;
  transformerFactory_: TTransformerFactory;
  transformer_: TTransformer;
begin
        booleanFactory_ := TBooleanFactory.getInstance();
        transformerFactory_ := TTransformerFactory.newInstance();
        transformerFactory_.setAttribute(Self.INDENT_NUMBER, indent);
        transformer_ := transformerFactory_.newTransformer();
        transformer_.setOutputProperty(TOutputKeys.ENCODING, TCharacterSetData.getInstance().UTF_8);
        transformer_.setOutputProperty(TOutputKeys.OMIT_XML_DECLARATION, TJava.IfThen<Variant>(ignoreDeclaration, booleanFactory_.YES, booleanFactory_.NO));
        transformer_.setOutputProperty(TOutputKeys.INDENT, booleanFactory_.YES);
        Exit(transformer_);
end;
    

// throws TransformerConfigurationException
function TXmlDocumentHelper.createTransformer: TTransformer;
var
  currentIndent: Integer;
  currentIgnoreDeclaration: Boolean;
begin
        
        
        TJava.MonitorEnter(Self);
        try
            currentIndent := Self.indent;
            currentIgnoreDeclaration := Self.ignoreDeclaration;
        finally
            TJava.MonitorExit(Self);
        end;
        Exit(Self.createTransformer(currentIndent, currentIgnoreDeclaration));
end;
    

// throws Exception
function TXmlDocumentHelper.format(xmlString: string): string;
begin
        Exit(Self.formatWithTransformer(xmlString, Self.createTransformer()));
end;
    

// throws Exception
function TXmlDocumentHelper.formatWithTransformer(xmlString: string; transformer_: TTransformer): string;
var
  src: TInputSource;
  document_: TDocument;
  out_: TWriter;
begin
        src := TInputSource.Create(TStringReader.Create(xmlString));
        document_ := TDocumentBuilderFactory.newInstance().newDocumentBuilder().parse(src);
        out_ := TStringWriter.Create();
        transformer_.transform(TDOMSource.Create(document_), TStreamResult.Create(out_));
        Exit(out_.toString());
end;
    

// throws Exception
class function TXmlDocumentHelper.toString(document_: TDocument): string;
var
  domSource_: TDOMSource;
  byteArrayOutputStream: TByteArrayOutputStream;
  streamResult_: TStreamResult;
  copyTransformerFactory: TTransformerFactory;
  copyTransformer: TTransformer;
begin
        try
            domSource_ := TDOMSource.Create(document_);
            byteArrayOutputStream := TByteArrayOutputStream.Create;
            streamResult_ := TStreamResult.Create(byteArrayOutputStream);
            copyTransformerFactory := TTransformerFactory.newInstance();
            copyTransformer := copyTransformerFactory.newTransformer();
            copyTransformer.transform(domSource_, streamResult_);
            Exit(byteArrayOutputStream.toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TXmlDocumentHelper.instance := TXmlDocumentHelper.Create();
  {AB:END}

end.

