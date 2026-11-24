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
// package org.allbinary.business.user
unit UserDomNode;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TableMappingInterface, DomNodeInterface, Document, Node;

type
  {AB:TYPES}
  TUserDomNode = class(TInterfacedObject, IDomNodeInterface)
  public
    dataMappingInterface: ITableMappingInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(dataMappingInterface: ITableMappingInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function view: string; virtual;
  end;

implementation
uses
  UserData, EntryData, ModDomHelper, StringUtil;


{AB:CODE}

procedure TUserDomNode.InitFields;
begin
  
end;

function TUserDomNode.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserDomNode.Create(dataMappingInterface: ITableMappingInterface);
begin
    inherited Create;
    InitFields;
        Self.dataMappingInterface := dataMappingInterface;
end;
    

// throws Exception
function TUserDomNode.toXmlNode(document_: TDocument): TNode;
var
  EMPTY_STRING: string;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
        hashMap_ := Self.dataMappingInterface.toHashMap();
        hashMap_.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(EMPTY_STRING));
        hashMap_.put(TJava.Box(TEntryData.getInstance().ENCRYPTION), TJava.Box(EMPTY_STRING));
        hashMap_.put(TJava.Box(TUserData.PASSWORD), TJava.Box(EMPTY_STRING));
        Exit(TModDomHelper.createNameValueNodes(document_, TUserData.NAME, hashMap_));
end;
    

// throws Exception
function TUserDomNode.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TUserDomNode.view: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

