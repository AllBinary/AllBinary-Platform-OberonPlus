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
// package org.allbinary.business.category
unit CategoriesView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, CategoryInterface;

type
  {AB:TYPES}
  TCategoriesView = class(TInterfacedObject, IDomNodeInterface)
  public
    categoryInterface: ICategoryInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryInterface_: ICategoryInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  CategoryView;


{AB:CODE}

procedure TCategoriesView.InitFields;
begin
  
end;

function TCategoriesView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoriesView.Create(categoryInterface_: ICategoryInterface);
begin
    inherited Create;
    InitFields;
        Self.categoryInterface := categoryInterface_;
end;
    

// throws Exception
function TCategoriesView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  childArray: TArray<TObject>;
  size: Integer;
  childCategoryInterface: ICategoryInterface;
  childCategoryNode: TNode;
  i: Integer;
begin
        node_ := TCategoryView.Create(Self.categoryInterface).toXmlNode(document_);
        childArray := Self.categoryInterface.getChildNodes().toArray();
        size := System.Length(childArray);
        for i := 0 to size - 1 do begin
            childCategoryInterface := (TJava.ToObject(childArray[i]) as ICategoryInterface);
            childCategoryNode := TCategoriesView.Create(childCategoryInterface).toXmlNode(document_);
            node_.appendChild(childCategoryNode);
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

