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
// package org.allbinary.logic.visual.transform.data
unit TransformHttpRequestDocument;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeblisketSession, LogUtil, SearchRequest, CommonStrings, Document, Node, TransformDocumentInterface;

type
  {AB:TYPES}
  TTransformHttpRequestDocument = class(TInterfacedObject, ITransformDocumentInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    baseNode: TNode;
    document: TDocument;
    class var language: string;
    class var local: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(pageContext_: TPageContext; weblisketSession_: TWeblisketSession); overload;
        constructor Create(searchRequest_: TSearchRequest); overload;
        function getBaseNode: TNode; virtual;
        function getDoc: TDocument; virtual;
        function log: string; virtual;
  end;

implementation
uses
  DomDocumentHelper, XmlDocumentHelper, AcceptableResponseGenerator, StringMaker;


{AB:CODE}

procedure TTransformHttpRequestDocument.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TTransformHttpRequestDocument.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformHttpRequestDocument.Create(pageContext_: TPageContext; weblisketSession_: TWeblisketSession);
var
  contentType: string;
  contentTypeNode: TNode;
  languageTypeNode: TNode;
  localTypeNode: TNode;
begin
    inherited Create;
    InitFields;
        try
            contentType := TAcceptableResponseGenerator.getInstance().get(THttpServletRequest(TJava.ToObject(pageContext_.getRequest())));
            Self.document := TDomDocumentHelper.create_();
            contentTypeNode := Self.document.createElement(contentType);
            languageTypeNode := Self.document.createElement(TTransformHttpRequestDocument.language);
            localTypeNode := Self.document.createElement(TTransformHttpRequestDocument.local);
            Self.baseNode := localTypeNode;
            languageTypeNode.appendChild(localTypeNode);
            contentTypeNode.appendChild(languageTypeNode);
            Self.document.appendChild(contentTypeNode);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.putF(Self.log(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

constructor TTransformHttpRequestDocument.Create(searchRequest_: TSearchRequest);
var
  contentType: string;
  contentTypeNode: TNode;
  languageTypeNode: TNode;
  localTypeNode: TNode;
begin
    inherited Create;
    InitFields;
        try
            contentType := searchRequest_.getContentType();
            Self.document := TDomDocumentHelper.create_();
            contentTypeNode := Self.document.createElement(contentType);
            languageTypeNode := Self.document.createElement(TTransformHttpRequestDocument.language);
            localTypeNode := Self.document.createElement(TTransformHttpRequestDocument.local);
            Self.baseNode := localTypeNode;
            languageTypeNode.appendChild(localTypeNode);
            contentTypeNode.appendChild(languageTypeNode);
            Self.document.appendChild(contentTypeNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

function TTransformHttpRequestDocument.getBaseNode: TNode;
begin
        Exit(Self.baseNode);
end;
    

function TTransformHttpRequestDocument.getDoc: TDocument;
begin
        Exit(Self.document);
end;
    

// throws Exception
function TTransformHttpRequestDocument.log: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if (Self.baseNode) <> (nil) then begin
            stringBuffer.append('BaseNode: ');
            stringBuffer.append(Self.baseNode.getNodeName());
        end else begin
            stringBuffer.append('Log-Error: BaseNode is Null');
        end;
        stringBuffer.append(''#10'Document: ');
        stringBuffer.append(TXmlDocumentHelper.toString(Self.document));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TTransformHttpRequestDocument.language := 'en';
  TTransformHttpRequestDocument.local := 'US';
  {AB:END}

end.

