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
// package org.allbinary.logic.visual.dhtml.style.css.property
unit CssPropertiesValidationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, NodeList;

type
  {AB:TYPES}
  TCssPropertiesValidationFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(nodeList_: TNodeList): TBasicArrayList; overload; static;
        class function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): TBasicArrayList; overload; static;
  end;

implementation
uses
  CssPropertyData, CssPropertyValidationFactory, BasicArrayListD, StdUtil, ValidationInterface, Node;


{AB:CODE}
    

constructor TCssPropertiesValidationFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TCssPropertiesValidationFactory.getInstance(nodeList_: TNodeList): TBasicArrayList;
var
  propertiesVector: TBasicArrayList;
  node_: TNode;
  cssPropertyValidationInterface: IValidationInterface;
  index: Integer;
begin
        propertiesVector := TBasicArrayListD.Create();
        for index := 0 to nodeList_.getLength() - 1 do begin
            node_ := nodeList_.item(index);
            if (node_.getNodeName().compareTo(TCssPropertyData.getInstance().NAME)) = (0) then begin
                cssPropertyValidationInterface := (TJava.ToObject(TCssPropertyValidationFactory.getInstance(node_)) as IValidationInterface);
                propertiesVector.add(TJava.Box(cssPropertyValidationInterface));
            end;
        end;
        Exit(propertiesVector);
end;
    

class function TCssPropertiesValidationFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): TBasicArrayList;
var
  styles: TBasicArrayList;
begin
        styles := TBasicArrayListD.Create();
        Exit(styles);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

