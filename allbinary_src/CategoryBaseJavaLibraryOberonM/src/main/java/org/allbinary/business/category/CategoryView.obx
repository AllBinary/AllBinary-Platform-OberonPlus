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
unit CategoryView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Document, Node, CategoryInterface;

type
  {AB:TYPES}
  TCategoryView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    categoryInterface: ICategoryInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryInterface_: ICategoryInterface);
        function getCategoryInterface: ICategoryInterface; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  CategoryData, BasicArrayList, BasicArrayListD, CategoryPropertiesInterface, CategoryPropertiesView, InterfaceUtil, CommonSeps;


{AB:CODE}

procedure TCategoryView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TCategoryView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryView.Create(categoryInterface_: ICategoryInterface);
begin
    inherited Create;
    InitFields;
        Self.categoryInterface := categoryInterface_;
end;
    

function TCategoryView.getCategoryInterface: ICategoryInterface;
begin
        Exit(Self.categoryInterface);
end;
    

// throws Exception
function TCategoryView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  childCategoryVector: TBasicArrayList;
  size: Integer;
  anyType: TObject;
  categoryPropertiesInterface_: ICategoryPropertiesInterface;
  isImpl: string;
  categoryInterface_: ICategoryInterface;
  childCategoryNode: TNode;
  i: Integer;
begin
        node_ := document_.createElement(TCategoryData.getInstance().NAME);
        childCategoryVector := Self.categoryInterface.getChildNodes();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF('Number Of Children: ' + IntToStr(childCategoryVector.size()), TJava.Box(Self), 'toXmlNode');
        end;
        size := childCategoryVector.size();
        for i := 0 to size - 1 do begin
            anyType := TJava.Box(childCategoryVector.get(i));
            categoryPropertiesInterface_ := nil;
            if TInterfaceUtil.isImplemented('CategoryPropertiesInterface', anyType) then begin
                categoryPropertiesInterface_ := (TJava.ToObject(anyType) as ICategoryPropertiesInterface);
            end else if TInterfaceUtil.isImplemented('CategoryInterface', anyType) then begin
                categoryInterface_ := (TJava.ToObject(anyType) as ICategoryInterface);
                categoryPropertiesInterface_ := categoryInterface_.getProperties();
            end else begin
                isImpl := TInterfaceUtil.viewAll(TJava.ToObject(anyType).ClassType, TCommonSeps.getInstance().NEW_LINE);
                raise SysUtils.Exception.Create('CategoryView found unknown object.'#10'' + 'Show Testing:' + isImpl);
            end;
            childCategoryNode := TCategoryPropertiesView.Create(categoryPropertiesInterface_).toXmlNode(document_);
            node_.appendChild(childCategoryNode);
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

