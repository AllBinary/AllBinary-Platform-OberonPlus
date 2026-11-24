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
// package org.allbinary.business.context.modules.storefront.statistics.orders.history
unit StoreFrontOrdersHistoryStatisticsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, StoreFrontOrdersHistoryStatisticsInterface;

type
  {AB:TYPES}
  TStoreFrontOrdersHistoryStatisticsView = class(TInterfacedObject, IDomNodeInterface)
  public
    storeFrontOrdersHistoryStatisticsInterface: IStoreFrontOrdersHistoryStatisticsInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontOrdersHistoryStatisticsInterface_: IStoreFrontOrdersHistoryStatisticsInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StoreFrontOrdersHistoryStatisticsData, ModDomHelper;


{AB:CODE}

procedure TStoreFrontOrdersHistoryStatisticsView.InitFields;
begin
  
end;

function TStoreFrontOrdersHistoryStatisticsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontOrdersHistoryStatisticsView.Create(storeFrontOrdersHistoryStatisticsInterface_: IStoreFrontOrdersHistoryStatisticsInterface);
begin
    inherited Create;
    InitFields;
        Self.storeFrontOrdersHistoryStatisticsInterface := storeFrontOrdersHistoryStatisticsInterface_;
end;
    

// throws Exception
function TStoreFrontOrdersHistoryStatisticsView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := Self.storeFrontOrdersHistoryStatisticsInterface.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TStoreFrontOrdersHistoryStatisticsData.getInstance().NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

