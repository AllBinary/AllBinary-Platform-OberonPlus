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
unit FileDomDataModel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, Document, Node, DomNodeInterface;

type
  {AB:TYPES}
  TFileDomDataModel = class(TInterfacedObject, IDomNodeInterface)
  public
    file_: TAbFile;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(file_: TAbFile);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  FileTableMapping, ModDomHelper, TableMappingInterface;


{AB:CODE}

procedure TFileDomDataModel.InitFields;
begin
  
end;

function TFileDomDataModel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFileDomDataModel.Create(file_: TAbFile);
begin
    inherited Create;
    InitFields;
        Self.file_ := file_;
end;
    

// throws Exception
function TFileDomDataModel.toXmlNode(document_: TDocument): TNode;
var
  tableMappingInterface_: ITableMappingInterface;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        tableMappingInterface_ := (TJava.ToObject(TFileTableMapping.Create(Self.file_)) as ITableMappingInterface);
        hashMap_ := tableMappingInterface_.toHashMap();
        Exit(TModDomHelper.createNodeWithValueNodes(document_, 'file', hashMap_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

