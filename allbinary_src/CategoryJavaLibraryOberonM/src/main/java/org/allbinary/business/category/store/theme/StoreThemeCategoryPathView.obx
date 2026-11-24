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
// package org.allbinary.business.category.store.theme
unit StoreThemeCategoryPathView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryView, DomNodeInterface, Document, Node, StoreThemeCategoryInterface;

type
  {AB:TYPES}
  TStoreThemeCategoryPathView = class(TCategoryView, IDomNodeInterface)
  public
    function JavaObject: TObject;
        constructor Create(categoryInterface: IStoreThemeCategoryInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ThemeInterface, ThemePropertiesView, ThemeValidation;


{AB:CODE}

function TStoreThemeCategoryPathView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreThemeCategoryPathView.Create(categoryInterface: IStoreThemeCategoryInterface);
begin
        inherited Create((TJava.ToObject(categoryInterface) as IStoreThemeCategoryInterface));
end;
    

// throws Exception
function TStoreThemeCategoryPathView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  storeThemeCategoryInterface_: IStoreThemeCategoryInterface;
  themeArray: TArray<TObject>;
  size: Integer;
  themeValidation_: TThemeValidation;
  domNodeInterface_: IDomNodeInterface;
  i: Integer;
begin
        node_ := inherited toXmlNode(document_);
        storeThemeCategoryInterface_ := (TJava.ToObject(Self.getCategoryInterface()) as IStoreThemeCategoryInterface);
        themeArray := storeThemeCategoryInterface_.getThemes().toArray();
        size := System.Length(themeArray);
        for i := 0 to size - 1 do begin
            themeValidation_ := TThemeValidation(TJava.ToObject(themeArray[i]));
            domNodeInterface_ := (TJava.ToObject(TThemePropertiesView.Create((TJava.ToObject(themeValidation_) as IThemeInterface))) as IDomNodeInterface);
            node_.appendChild(domNodeInterface_.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

