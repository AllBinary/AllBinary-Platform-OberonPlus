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
// package org.allbinary.data.tree.dom
unit XslHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document;

type
  {AB:TYPES}
  // import org.allbinary.data.tree.dom.document.DomDocumentHelper;
  TXslHelper = class(TObject)
  public
    class var instance: TXslHelper;
        class function getInstance: TXslHelper; static;
        constructor Create;
        function translate(xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource; streamResult_: TStreamResult): TOutputStream; overload; virtual;
        function translate(resolver: TURIResolver; xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource; streamResult_: TStreamResult): TOutputStream; overload; virtual;
        function translateTemplate(templates_: TTemplates; xmlStreamSource: TStreamSource): string; virtual;
        function translate(xsltStreamSource: TStreamSource; xmlDocument: TDocument): string; overload; virtual;
        function translate(xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource): string; overload; virtual;
        function translate(resolver: TURIResolver; xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource): string; overload; virtual;
        procedure export(outputFile: TFile; xsltFilePath: string; xmlDocument: TDocument); virtual;
  end;

implementation
uses
  XmlDocumentHelper;


{AB:CODE}
    

class function TXslHelper.getInstance: TXslHelper;
begin
        Exit(TXslHelper.instance);
end;
    

constructor TXslHelper.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TXslHelper.translate(xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource; streamResult_: TStreamResult): TOutputStream;
var
  transformerFactory_: TTransformerFactory;
  transformer_: TTransformer;
begin
        try
            transformerFactory_ := TTransformerFactory.newInstance();
            transformer_ := transformerFactory_.newTransformer(xsltStreamSource);
            transformer_.transform(xmlStreamSource, streamResult_);
            Exit(streamResult_.getOutputStream());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TXslHelper.translate(resolver: TURIResolver; xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource; streamResult_: TStreamResult): TOutputStream;
var
  tFactory: TTransformerFactory;
  transformer_: TTransformer;
begin
        try
            tFactory := TTransformerFactory.newInstance();
            tFactory.setURIResolver(resolver);
            transformer_ := tFactory.newTransformer(xsltStreamSource);
            transformer_.transform(xmlStreamSource, streamResult_);
            Exit(streamResult_.getOutputStream());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TXslHelper.translateTemplate(templates_: TTemplates; xmlStreamSource: TStreamSource): string;
var
  outputStream_: TByteArrayOutputStream;
  streamResult_: TStreamResult;
begin
        try
            outputStream_ := TByteArrayOutputStream.Create;
            streamResult_ := TStreamResult.Create(outputStream_);
            templates_.newTransformer().transform(xmlStreamSource, streamResult_);
            Exit(streamResult_.getOutputStream().toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TXslHelper.translate(xsltStreamSource: TStreamSource; xmlDocument: TDocument): string;
var
  outputStream_: TByteArrayOutputStream;
begin
        try
            outputStream_ := TByteArrayOutputStream.Create;
            Exit(Self.translate(xsltStreamSource, TStreamSource.Create(TStringBufferInputStream.Create(TXmlDocumentHelper.toString(xmlDocument))), TStreamResult.Create(outputStream_)).toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TXslHelper.translate(xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource): string;
var
  outputStream_: TByteArrayOutputStream;
begin
        try
            outputStream_ := TByteArrayOutputStream.Create;
            Exit(Self.translate(xsltStreamSource, xmlStreamSource, TStreamResult.Create(outputStream_)).toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TXslHelper.translate(resolver: TURIResolver; xsltStreamSource: TStreamSource; xmlStreamSource: TStreamSource): string;
var
  outputStream_: TByteArrayOutputStream;
begin
        try
            outputStream_ := TByteArrayOutputStream.Create;
            Exit(Self.translate(resolver, xsltStreamSource, xmlStreamSource, TStreamResult.Create(outputStream_)).toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TXslHelper.export(outputFile: TFile; xsltFilePath: string; xmlDocument: TDocument);
begin
        try
            outputFile.createNewFile();
            Self.translate(TStreamSource.Create(xsltFilePath), TStreamSource.Create(TStringBufferInputStream.Create(TXmlDocumentHelper.toString(xmlDocument))), TStreamResult.Create(outputFile));
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TXslHelper.instance := TXslHelper.Create();
  {AB:END}

end.

