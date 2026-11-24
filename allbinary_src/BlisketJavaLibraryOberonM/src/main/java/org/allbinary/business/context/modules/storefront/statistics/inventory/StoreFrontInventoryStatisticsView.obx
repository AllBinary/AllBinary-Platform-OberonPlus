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
// package org.allbinary.business.context.modules.storefront.statistics.inventory
unit StoreFrontInventoryStatisticsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, StoreFrontInventoryStatisticsInterface;

type
  {AB:TYPES}
  TStoreFrontInventoryStatisticsView = class(TInterfacedObject, IDomNodeInterface)
  public
    storeFrontInventoryStatisticsInterface: IStoreFrontInventoryStatisticsInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontInventoryStatisticsInterface_: IStoreFrontInventoryStatisticsInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StoreFrontInventoryStatisticsData, ModDomHelper;


{AB:CODE}

procedure TStoreFrontInventoryStatisticsView.InitFields;
begin
  
end;

function TStoreFrontInventoryStatisticsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontInventoryStatisticsView.Create(storeFrontInventoryStatisticsInterface_: IStoreFrontInventoryStatisticsInterface);
begin
    inherited Create;
    InitFields;
        Self.storeFrontInventoryStatisticsInterface := storeFrontInventoryStatisticsInterface_;
end;
    

// throws Exception
function TStoreFrontInventoryStatisticsView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := Self.storeFrontInventoryStatisticsInterface.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TStoreFrontInventoryStatisticsData.getInstance().NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

