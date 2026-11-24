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
unit SearchRequest;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbContext, StoreFrontInterface, Document, Node, SearchParams;

type
  {AB:TYPES}
  TSearchRequest = class(TAbContext)
  public
    xslFile: string;
    pageName: string;
    contentType: string;
    searchParams: TSearchParams;
    storeFront: IStoreFrontInterface;
    procedure InitFields;
        constructor Create(storeFront: IStoreFrontInterface; searchParams_: TSearchParams; xslFile: string; contentType: string; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure setStoreFront(storeFront: IStoreFrontInterface); virtual;
        procedure setParams(searchParams_: TSearchParams); virtual;
        procedure setXslFile(value: string); virtual;
        procedure setFileBaseName(value: string); virtual;
        procedure setContentType(value: string); virtual;
        function getStoreFront: IStoreFrontInterface; virtual;
        function getParams: TSearchParams; virtual;
        function getXslFile: string; virtual;
        function getFileBaseName: string; virtual;
        function getContentType: string; virtual;
        function getFileBaseNameNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  SearchData, ModDomHelper;


{AB:CODE}

procedure TSearchRequest.InitFields;
begin
  
  
  
  
  
end;
    

constructor TSearchRequest.Create(storeFront: IStoreFrontInterface; searchParams_: TSearchParams; xslFile: string; contentType: string; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_);
        InitFields;
        Self.storeFront := storeFront;
        Self.searchParams := searchParams_;
        Self.xslFile := xslFile;
        Self.pageName := Self.pageName;
        Self.contentType := contentType;
end;
    

procedure TSearchRequest.setStoreFront(storeFront: IStoreFrontInterface);
begin
        Self.storeFront := storeFront;
end;
    

procedure TSearchRequest.setParams(searchParams_: TSearchParams);
begin
        Self.searchParams := searchParams_;
end;
    

procedure TSearchRequest.setXslFile(value: string);
begin
        Self.xslFile := value;
end;
    

procedure TSearchRequest.setFileBaseName(value: string);
begin
        Self.pageName := value;
end;
    

procedure TSearchRequest.setContentType(value: string);
begin
        Self.contentType := value;
end;
    

function TSearchRequest.getStoreFront: IStoreFrontInterface;
begin
        Exit(Self.storeFront);
end;
    

function TSearchRequest.getParams: TSearchParams;
begin
        Exit(Self.searchParams);
end;
    

function TSearchRequest.getXslFile: string;
begin
        Exit(Self.xslFile);
end;
    

function TSearchRequest.getFileBaseName: string;
begin
        Exit(Self.pageName);
end;
    

function TSearchRequest.getContentType: string;
begin
        Exit(Self.contentType);
end;
    

// throws Exception
function TSearchRequest.getFileBaseNameNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createNameValueNodes(document_, TSearchData.FILENAME, Self.getFileBaseName()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

