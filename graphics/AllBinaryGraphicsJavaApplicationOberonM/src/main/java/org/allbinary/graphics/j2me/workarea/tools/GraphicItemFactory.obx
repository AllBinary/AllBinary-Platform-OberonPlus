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
// package org.allbinary.graphics.j2me.workarea.tools
unit GraphicItemFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, GraphicsItemInterfaceFactoryInterface;

type
  {AB:TYPES}
  TGraphicItemFactory = class(TObject)
  public
    graphicItems: TJavaHashMap<TObject, TObject>;
    DEFAULT: IGraphicsItemInterfaceFactoryInterface;
    class var instance: TGraphicItemFactory;
    procedure InitFields;
        class function getInstance: TGraphicItemFactory; overload; static;
        constructor Create;
        function getInstance(itemName: string): IGraphicsItemInterfaceFactoryInterface; overload; virtual;
        function getInstance(graphicItemNodeList: TBasicArrayList): TJavaHashMap<TObject, TObject>; overload; virtual;
  end;

implementation
uses
  SelectionToolFactory, LinesGraphicItem, LinesGraphicItemFactory, GraphicItemBuilder, GraphicItemInterface, LOGGING, StdUtil, Node;


{AB:CODE}

procedure TGraphicItemFactory.InitFields;
begin
  
  Self.DEFAULT := TSelectionToolFactory.Create();
end;
    

class function TGraphicItemFactory.getInstance: TGraphicItemFactory;
begin
        Exit(TGraphicItemFactory.instance);
end;
    

constructor TGraphicItemFactory.Create;
begin
    inherited Create;
    InitFields;
        Self.graphicItems := TStdUtil.getInstance().createHashMap();
        Self.graphicItems.put(TJava.Box(TLinesGraphicItem.getStaticName()), TJava.Box(TLinesGraphicItemFactory.Create()));
end;
    

function TGraphicItemFactory.getInstance(itemName: string): IGraphicsItemInterfaceFactoryInterface;
var
  graphicsItemInterfaceFactoryInterface_: IGraphicsItemInterfaceFactoryInterface;
begin
        graphicsItemInterfaceFactoryInterface_ := (TJava.ToObject(Self.graphicItems.get(TJava.Box(itemName))) as IGraphicsItemInterfaceFactoryInterface);
        if (graphicsItemInterfaceFactoryInterface_) = (nil) then begin
            graphicsItemInterfaceFactoryInterface_ := Self.DEFAULT;
        end;
        Exit(graphicsItemInterfaceFactoryInterface_);
end;
    

// throws Exception
function TGraphicItemFactory.getInstance(graphicItemNodeList: TBasicArrayList): TJavaHashMap<TObject, TObject>;
var
  numberOfItems: Integer;
  graphicItemHashMap: TJavaHashMap<TObject, TObject>;
  graphicItem: IGraphicItemInterface;
  index: Integer;
begin
        numberOfItems := graphicItemNodeList.size();
        graphicItemHashMap := TStdUtil.getInstance().createHashMap();
        if LOGGING.contains(LOGGING.MENUEVENT) then begin
        end;
        for index := 0 to numberOfItems - 1 do begin
            graphicItem := TGraphicItemBuilder.getInstance(TNode(TJava.ToObject(graphicItemNodeList.get(index))));
            graphicItemHashMap.put(TJava.Box(graphicItem.getTreeNode()), TJava.Box(graphicItem));
        end;
        Exit(graphicItemHashMap);
end;

initialization
  {AB:INITIALIZATION}
  TGraphicItemFactory.instance := TGraphicItemFactory.Create();
  {AB:END}

end.

