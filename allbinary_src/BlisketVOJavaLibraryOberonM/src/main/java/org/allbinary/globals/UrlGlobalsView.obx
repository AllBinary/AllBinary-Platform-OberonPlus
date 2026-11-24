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
// package org.allbinary.globals
unit UrlGlobalsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node;

type
  {AB:TYPES}
  TUrlGlobalsView = class(TInterfacedObject, IDomNodeInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  UrlGlobalsData, ModDomHelper, StdUtil;


{AB:CODE}

function TUrlGlobalsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUrlGlobalsView.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TUrlGlobalsView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TUrlGlobalsData.WEBAPPPATH), TJava.Box(Torg.allbinary.globals.URLGLOBALS.getWebappPath()));
        node_ := TModDomHelper.createNameValueNodes(document_, TUrlGlobalsData.NAME, hashMap_);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

