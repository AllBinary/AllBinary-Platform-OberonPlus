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
unit DirectoryDataModel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, TransformInterface, TransformDocumentInterface, TransformInfoInterface, BasicArrayList, Document, Node, DomNodeInterface;

type
  {AB:TYPES}
  TDirectoryDataModel = class(TInterfacedObject, IDomNodeInterface, ITransformInterface)
  public
    fileBasicArrayList: TBasicArrayList;
    transformDocumentInterface: ITransformDocumentInterface;
    NO_TYPE: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(file_: TAbFile);
        function getTypeId: Integer; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        procedure setTransformDocumentInterface(transformDocumentInterface_: ITransformDocumentInterface); virtual;
        function getTransformDocumentInterface: ITransformDocumentInterface; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function view: string; virtual;
  end;

implementation
uses
  FileDomDataModel, XmlDocumentHelper, Directory, TransformDocumentFactory;


{AB:CODE}

procedure TDirectoryDataModel.InitFields;
begin
  
  
  Self.NO_TYPE := 0;
end;

function TDirectoryDataModel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDirectoryDataModel.Create(file_: TAbFile);
begin
    inherited Create;
    InitFields;
        Self.fileBasicArrayList := TDirectory.getInstance().search(file_);
        Self.transformDocumentInterface := (TJava.ToObject(TTransformDocumentFactory.getInstance()) as ITransformDocumentInterface);
end;
    

function TDirectoryDataModel.getTypeId: Integer;
begin
        Exit(Self.NO_TYPE);
end;
    

// throws Exception
function TDirectoryDataModel.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(nil);
end;
    

procedure TDirectoryDataModel.setTransformDocumentInterface(transformDocumentInterface_: ITransformDocumentInterface);
begin
        Self.transformDocumentInterface := transformDocumentInterface_;
end;
    

function TDirectoryDataModel.getTransformDocumentInterface: ITransformDocumentInterface;
begin
        Exit(Self.transformDocumentInterface);
end;
    

// throws Exception
function TDirectoryDataModel.toXmlNode(document_: TDocument): TNode;
var
  dirNode: TNode;
  size: Integer;
  nextFile: TAbFile;
  fileNode: TNode;
  index: Integer;
begin
        dirNode := document_.createElement('dir');
        size := Self.fileBasicArrayList.size();
        
        
        for index := 0 to size - 1 do begin
            nextFile := TAbFile(TJava.ToObject(Self.fileBasicArrayList.get(index)));
            fileNode := TFileDomDataModel.Create(nextFile).toXmlNode(document_);
            dirNode.appendChild(fileNode);
        end;
        Exit(dirNode);
end;
    

// throws Exception
function TDirectoryDataModel.toXmlDoc: TDocument;
begin
        Exit(Self.getTransformDocumentInterface().getDoc());
end;
    

// throws Exception
function TDirectoryDataModel.view: string;
var
  node_: TNode;
begin
        node_ := Self.toXmlNode(Self.getTransformDocumentInterface().getDoc());
        Self.getTransformDocumentInterface().getBaseNode().appendChild(node_);
        Exit(TXmlDocumentHelper.toString(Self.getTransformDocumentInterface().getDoc()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

