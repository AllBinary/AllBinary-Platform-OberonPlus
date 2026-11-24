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
// package org.allbinary.business.context.modules.storefront
unit StoreFrontView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Document, Node, StoreFrontInterface;

type
  {AB:TYPES}
  TStoreFrontView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    storeFrontInterface: IStoreFrontInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontInterface_: IStoreFrontInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StoreFrontData, BasketData, ModDomHelper, CommonStrings;


{AB:CODE}

procedure TStoreFrontView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TStoreFrontView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontView.Create(storeFrontInterface_: IStoreFrontInterface);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF('Constructing: StoreFrontView for: ' + storeFrontInterface_.getName(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
        end;
        Self.storeFrontInterface := storeFrontInterface_;
end;
    

// throws Exception
function TStoreFrontView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  storeFrontData_: TStoreFrontData;
  node_: TNode;
begin
        hashMap_ := Self.storeFrontInterface.toHashMap();
        storeFrontData_ := TStoreFrontData.getInstance();
        hashMap_.put(TJava.Box(storeFrontData_.CURRENTHOMEHOSTNAME), TJava.Box(Self.storeFrontInterface.getCurrentHomeHostName()));
        hashMap_.put(TJava.Box(storeFrontData_.CURRENTHOMEHOSTNAMEPATH), TJava.Box(Self.storeFrontInterface.getCurrentHomeHostNamePath()));
        hashMap_.put(TJava.Box(storeFrontData_.CURRENTHOSTNAME), TJava.Box(Self.storeFrontInterface.getCurrentHostName()));
        hashMap_.put(TJava.Box(storeFrontData_.CURRENTHOSTNAMEPATH), TJava.Box(Self.storeFrontInterface.getCurrentHostNamePath()));
        hashMap_.put(TJava.Box(TBasketData.NAME), TJava.Box(Self.storeFrontInterface.getBasketName()));
        node_ := TModDomHelper.createNameValueNodes(document_, storeFrontData_.NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

