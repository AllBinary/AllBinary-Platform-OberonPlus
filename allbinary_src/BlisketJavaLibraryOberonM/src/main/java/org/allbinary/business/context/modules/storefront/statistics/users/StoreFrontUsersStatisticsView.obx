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
// package org.allbinary.business.context.modules.storefront.statistics.users
unit StoreFrontUsersStatisticsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, StoreFrontUsersStatisticsInterface;

type
  {AB:TYPES}
  TStoreFrontUsersStatisticsView = class(TInterfacedObject, IDomNodeInterface)
  public
    storeFrontUsersStatisticsInterface: IStoreFrontUsersStatisticsInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontUsersStatisticsInterface_: IStoreFrontUsersStatisticsInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StoreFrontUsersStatisticsData, ModDomHelper;


{AB:CODE}

procedure TStoreFrontUsersStatisticsView.InitFields;
begin
  
end;

function TStoreFrontUsersStatisticsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontUsersStatisticsView.Create(storeFrontUsersStatisticsInterface_: IStoreFrontUsersStatisticsInterface);
begin
    inherited Create;
    InitFields;
        Self.storeFrontUsersStatisticsInterface := storeFrontUsersStatisticsInterface_;
end;
    

// throws Exception
function TStoreFrontUsersStatisticsView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := Self.storeFrontUsersStatisticsInterface.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TStoreFrontUsersStatisticsData.getInstance().NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

