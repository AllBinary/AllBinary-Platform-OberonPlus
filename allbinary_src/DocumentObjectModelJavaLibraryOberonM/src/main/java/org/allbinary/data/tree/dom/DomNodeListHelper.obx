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
// package org.allbinary.data.tree.dom
unit DomNodeListHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, NodeList;

type
  {AB:TYPES}
  TDomNodeListHelper = class(TObject)
  public
    constructor Create;
        class function getVector(nodeList_: TNodeList): TBasicArrayList; static;
  end;

implementation
uses
  DomNodeHelper, BasicArrayListD, StdUtil;


{AB:CODE}

constructor TDomNodeListHelper.Create;
begin
  inherited Create;
end;
    

class function TDomNodeListHelper.getVector(nodeList_: TNodeList): TBasicArrayList;
var
  vector: TBasicArrayList;
  size: Integer;
  index: Integer;
begin
        vector := TBasicArrayListD.Create();
        size := nodeList_.getLength();
        for index := 0 to size - 1 do begin
            vector.add(TJava.Box(TDomNodeHelper.getTextNodeValue(nodeList_.item(index))));
        end;
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

