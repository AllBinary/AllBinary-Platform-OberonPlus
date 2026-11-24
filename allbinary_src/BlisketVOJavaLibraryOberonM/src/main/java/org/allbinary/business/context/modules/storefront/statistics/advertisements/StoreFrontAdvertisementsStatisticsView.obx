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
// package org.allbinary.business.context.modules.storefront.statistics.advertisements
unit StoreFrontAdvertisementsStatisticsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, StoreFrontAdvertisementsStatisticsInterface;

type
  {AB:TYPES}
  TStoreFrontAdvertisementsStatisticsView = class(TInterfacedObject, IDomNodeInterface)
  public
    storeFrontAdvertisementsStatisticsInterface: IStoreFrontAdvertisementsStatisticsInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontAdvertisementsStatisticsInterface_: IStoreFrontAdvertisementsStatisticsInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StoreFrontAdvertisementsStatisticsData, ModDomHelper;


{AB:CODE}

procedure TStoreFrontAdvertisementsStatisticsView.InitFields;
begin
  
end;

function TStoreFrontAdvertisementsStatisticsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontAdvertisementsStatisticsView.Create(storeFrontAdvertisementsStatisticsInterface_: IStoreFrontAdvertisementsStatisticsInterface);
begin
    inherited Create;
    InitFields;
        Self.storeFrontAdvertisementsStatisticsInterface := storeFrontAdvertisementsStatisticsInterface_;
end;
    

// throws Exception
function TStoreFrontAdvertisementsStatisticsView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := Self.storeFrontAdvertisementsStatisticsInterface.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TStoreFrontAdvertisementsStatisticsData.getInstance().NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

