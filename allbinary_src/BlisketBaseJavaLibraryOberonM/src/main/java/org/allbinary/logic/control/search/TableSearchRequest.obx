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
// package org.allbinary.logic.control.search
unit TableSearchRequest;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document, Node, SearchParams;

type
  {AB:TYPES}
  TTableSearchRequest = class(TObject)
  public
    xslFile: string;
    pageName: string;
    contentType: string;
    keywords: string;
    searchParams: TSearchParams;
    procedure InitFields;
        constructor Create(keywords: string; searchParams_: TSearchParams; xslFile: string; contentType: string);
        procedure setKeywords(value: string); virtual;
        procedure setParams(searchParams_: TSearchParams); virtual;
        procedure setXslFile(value: string); virtual;
        procedure setFileBaseName(value: string); virtual;
        procedure setContentType(value: string); virtual;
        function getKeywords: string; virtual;
        function getParams: TSearchParams; virtual;
        function getXslFile: string; virtual;
        function getFileBaseName: string; virtual;
        function getContentType: string; virtual;
        function getFileBaseNameNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  SearchData, ModDomHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS;


{AB:CODE}

procedure TTableSearchRequest.InitFields;
begin
  
  
  
  
  
end;
    

constructor TTableSearchRequest.Create(keywords: string; searchParams_: TSearchParams; xslFile: string; contentType: string);
begin
    inherited Create;
    InitFields;
        Self.keywords := keywords;
        Self.searchParams := searchParams_;
        Self.xslFile := xslFile;
        Self.pageName := Self.pageName;
        Self.contentType := contentType;
end;
    

procedure TTableSearchRequest.setKeywords(value: string);
begin
        Self.keywords := value;
end;
    

procedure TTableSearchRequest.setParams(searchParams_: TSearchParams);
begin
        Self.searchParams := searchParams_;
end;
    

procedure TTableSearchRequest.setXslFile(value: string);
begin
        Self.xslFile := value;
end;
    

procedure TTableSearchRequest.setFileBaseName(value: string);
begin
        Self.pageName := value;
end;
    

procedure TTableSearchRequest.setContentType(value: string);
begin
        Self.contentType := value;
end;
    

function TTableSearchRequest.getKeywords: string;
begin
        Exit(Self.keywords);
end;
    

function TTableSearchRequest.getParams: TSearchParams;
begin
        Exit(Self.searchParams);
end;
    

// throws Exception
function TTableSearchRequest.getXslFile: string;
var
  path: string;
begin
        path := TJava.ToString((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)) + Self.xslFile;
        Exit(path);
end;
    

function TTableSearchRequest.getFileBaseName: string;
begin
        Exit(Self.pageName);
end;
    

function TTableSearchRequest.getContentType: string;
begin
        Exit(Self.contentType);
end;
    

// throws Exception
function TTableSearchRequest.getFileBaseNameNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createNameValueNodes(document_, TSearchData.FILENAME, Self.getFileBaseName()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

