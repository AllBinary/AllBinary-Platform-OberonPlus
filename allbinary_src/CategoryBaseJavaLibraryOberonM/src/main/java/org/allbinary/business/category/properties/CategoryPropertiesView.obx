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
// package org.allbinary.business.category.properties
unit CategoryPropertiesView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, CategoryPropertiesInterface;

type
  {AB:TYPES}
  TCategoryPropertiesView = class(TInterfacedObject, IDomNodeInterface)
  public
    categoryPropertiesInterface: ICategoryPropertiesInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryPropertiesInterface_: ICategoryPropertiesInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  CategoryData, Element;


{AB:CODE}

procedure TCategoryPropertiesView.InitFields;
begin
  
end;

function TCategoryPropertiesView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryPropertiesView.Create(categoryPropertiesInterface_: ICategoryPropertiesInterface);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := categoryPropertiesInterface_;
end;
    

// throws Exception
function TCategoryPropertiesView.toXmlNode(document_: TDocument): TNode;
var
  categoryNode: TNode;
  newCategoryNode: TElement;
begin
        categoryNode := document_.createElement(TCategoryData.getInstance().NAME);
        newCategoryNode := TElement(TJava.ToObject(categoryNode));
        newCategoryNode.setAttribute(TCategoryData.getInstance().LABEL_, Self.categoryPropertiesInterface.getValue());
        Exit(categoryNode);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

