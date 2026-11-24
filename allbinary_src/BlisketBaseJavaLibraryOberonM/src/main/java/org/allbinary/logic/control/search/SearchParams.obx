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
unit SearchParams;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document, Node;

type
  {AB:TYPES}
  TSearchParams = class(TObject)
  public
    columnsAndSearchValues: TJavaHashMap<TObject, TObject>;
    order: string;
    sortBy: string;
    listLength: string;
    startPage: string;
    endPage: string;
    procedure InitFields;
        constructor Create(request: THttpServletRequest);
        procedure add(column: string; value: string); virtual;
        procedure setOrder(value: string); virtual;
        procedure setSortBy(value: string); virtual;
        procedure setLength(value: string); virtual;
        procedure setStartPage(value: string); virtual;
        procedure setEndPage(value: string); virtual;
        function get: TJavaHashMap<TObject, TObject>; virtual;
        function getOrder: string; virtual;
        function getSortBy: string; virtual;
        function getLength: string; virtual;
        function getLengthInt: Integer; virtual;
        function getStartPage: string; virtual;
        function getEndPage: string; virtual;
        function getStartPageInt: Integer; virtual;
        function getEndPageInt: Integer; virtual;
        function getParamsNode(document_: TDocument): TNode; virtual;
        function getFieldsNode(document_: TDocument): TNode;
        function getOrderNode(document_: TDocument): TNode;
        function getSortByNode(document_: TDocument): TNode;
        function getLengthNode(document_: TDocument): TNode;
  end;

implementation
uses
  SearchData, ModDomHelper, ToDomHelper, StdUtil;


{AB:CODE}

procedure TSearchParams.InitFields;
begin
  
  
  
  
  
  
end;
    

constructor TSearchParams.Create(request: THttpServletRequest);
var
  page: string;
  index: Integer;
  columnName: string;
  columnValue: string;
begin
    inherited Create;
    InitFields;
        Self.columnsAndSearchValues := TStdUtil.getInstance().createHashMap();
        Self.setLength(request.getParameter(TSearchData.LENGTH));
        Self.setOrder(request.getParameter(TSearchData.ORDER));
        page := request.getParameter(TSearchData.PAGE);
        Self.setStartPage(page);
        Self.setEndPage(page);
        Self.setSortBy(request.getParameter(TSearchData.SORTBY));
        index := 0;
        columnName := request.getParameter(TJava.ToString(TSearchData.COLUMNNAME) + '[0]');
        columnValue := request.getParameter(TJava.ToString(TSearchData.COLUMNVALUE) + '[0]');
        while (columnName) <> ('') do begin
            Self.add(columnName, columnValue);
            Inc(index);
            columnName := request.getParameter(TJava.ToString(TSearchData.COLUMNNAME) + '[' + IntToStr(index) + ']');
            columnValue := request.getParameter(TJava.ToString(TSearchData.COLUMNVALUE) + '[' + IntToStr(index) + ']');
        end;
end;
    

procedure TSearchParams.add(column: string; value: string);
begin
        Self.columnsAndSearchValues.put(TJava.Box(column), TJava.Box(value));
end;
    

procedure TSearchParams.setOrder(value: string);
begin
        Self.order := value;
end;
    

procedure TSearchParams.setSortBy(value: string);
begin
        Self.sortBy := value;
end;
    

procedure TSearchParams.setLength(value: string);
begin
        Self.listLength := value;
end;
    

procedure TSearchParams.setStartPage(value: string);
begin
        Self.startPage := value;
end;
    

procedure TSearchParams.setEndPage(value: string);
begin
        Self.endPage := value;
end;
    

function TSearchParams.get: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.columnsAndSearchValues);
end;
    

function TSearchParams.getOrder: string;
begin
        Exit(Self.order);
end;
    

function TSearchParams.getSortBy: string;
begin
        Exit(Self.sortBy);
end;
    

function TSearchParams.getLength: string;
begin
        Exit(Self.listLength);
end;
    

function TSearchParams.getLengthInt: Integer;
begin
        if (Self.listLength) <> ('') then begin
            Exit(Self.listLength);
        end else begin
            Exit(0);
        end;
end;
    

function TSearchParams.getStartPage: string;
begin
        Exit(Self.startPage);
end;
    

function TSearchParams.getEndPage: string;
begin
        Exit(Self.endPage);
end;
    

function TSearchParams.getStartPageInt: Integer;
begin
        if (Self.startPage) <> ('') then begin
            Exit(Self.startPage);
        end else begin
            Exit(0);
        end;
end;
    

function TSearchParams.getEndPageInt: Integer;
begin
        if (Self.endPage) <> ('') then begin
            Exit(Self.endPage);
        end else begin
            Exit(0);
        end;
end;
    

// throws Exception
function TSearchParams.getParamsNode(document_: TDocument): TNode;
var
  paramsNode: TNode;
begin
        paramsNode := TModDomHelper.createNameValueNodes(document_, TSearchData.PARAMS, TSearchData.PARAMS);
        paramsNode.appendChild(Self.getFieldsNode(document_));
        paramsNode.appendChild(Self.getOrderNode(document_));
        paramsNode.appendChild(Self.getSortByNode(document_));
        paramsNode.appendChild(Self.getLengthNode(document_));
        Exit(paramsNode);
end;
    

// throws Exception
function TSearchParams.getFieldsNode(document_: TDocument): TNode;
var
  fieldsNode: TNode;
  set_: ISet;
  searchValueArray: TArray<TObject>;
  size: Integer;
  key: string;
  searchValue: string;
  index: Integer;
begin
        fieldsNode := TModDomHelper.createNameValueNodes(document_, TSearchData.FIELDS, Self.columnsAndSearchValues.size().toString());
        set_ := Self.columnsAndSearchValues.keySet();
        searchValueArray := set_.toArray();
        size := System.Length(searchValueArray);
        for index := 0 to size - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(searchValueArray[index]));
            searchValue := TJava.UnboxString(TJava.ToObject(Self.columnsAndSearchValues.get(TJava.Box(key))));
            fieldsNode.appendChild(TModDomHelper.createNameValueNodes(document_, TSearchData.FIELD, key, TToDomHelper.convertNull(searchValue)));
        end;
        Exit(fieldsNode);
end;
    

// throws Exception
function TSearchParams.getOrderNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createNameValueNodes(document_, TSearchData.ORDER, TToDomHelper.convertNull(Self.getOrder())));
end;
    

// throws Exception
function TSearchParams.getSortByNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createNameValueNodes(document_, TSearchData.SORTBY, TToDomHelper.convertNull(Self.getSortBy())));
end;
    

// throws Exception
function TSearchParams.getLengthNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createNameValueNodes(document_, TSearchData.LENGTH, TToDomHelper.convertNull(Self.getLength())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

