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
unit CssPropertyView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, CommonStrings, Document, Node, CssProperty;

type
  {AB:TYPES}
  TCssPropertyView = class(TInterfacedObject, IDomNodeInterface)
  public
    commonStrings: TCommonStrings;
    cssProperty: TCssProperty;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string); overload;
        constructor Create(node_: TNode); overload;
        function getProperty: TCssProperty; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation

{AB:CODE}

procedure TCssPropertyView.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TCssPropertyView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCssPropertyView.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.cssProperty := TCssProperty.Create(name);
end;
    

constructor TCssPropertyView.Create(node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.cssProperty := TCssProperty.Create(node_);
end;
    

function TCssPropertyView.getProperty: TCssProperty;
begin
        Exit(Self.cssProperty);
end;
    

// throws Exception
function TCssPropertyView.toXmlNode(document_: TDocument): TNode;
begin
        Exit(Self.cssProperty.toXmlNode(document_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

