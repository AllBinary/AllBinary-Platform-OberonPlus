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
// package org.allbinary.logic.communication.java.vm.stats
unit JvmStatisticsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, JvmStatisticsMapping;

type
  {AB:TYPES}
  TJvmStatisticsView = class(TJvmStatisticsMapping, IDomNodeInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  JvmStatisticsData, ModDomHelper;


{AB:CODE}

function TJvmStatisticsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TJvmStatisticsView.Create;
begin
        inherited Create();
end;
    

// throws Exception
function TJvmStatisticsView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := Self.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TJvmStatisticsData.NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

