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
// package org.allbinary.logic.visual.dhtml.style.css
unit CssElementsValidationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TCssElementsValidationFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(cssElementStyleNodeList: TBasicArrayList): TBasicArrayList; overload; static;
        class function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): TBasicArrayList; overload; static;
  end;

implementation
uses
  CssElementValidationFactory, BasicArrayListD, StdUtil, ValidationInterface, Node;


{AB:CODE}
    

constructor TCssElementsValidationFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TCssElementsValidationFactory.getInstance(cssElementStyleNodeList: TBasicArrayList): TBasicArrayList;
var
  styles: TBasicArrayList;
  size: Integer;
  cssElementStyleNode: TNode;
  cssValidationInterface: IValidationInterface;
  index: Integer;
begin
        styles := TBasicArrayListD.Create();
        size := cssElementStyleNodeList.size();
        
        
        for index := 0 to size - 1 do begin
            cssElementStyleNode := TNode(TJava.ToObject(cssElementStyleNodeList.get(index)));
            cssValidationInterface := (TJava.ToObject(TCssElementValidationFactory.getInstance(cssElementStyleNode)) as IValidationInterface);
            styles.add(TJava.Box(cssValidationInterface));
        end;
        Exit(styles);
end;
    

class function TCssElementsValidationFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): TBasicArrayList;
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

