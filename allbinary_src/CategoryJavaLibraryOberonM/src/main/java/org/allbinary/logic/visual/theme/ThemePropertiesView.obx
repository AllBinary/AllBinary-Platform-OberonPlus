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
// package org.allbinary.logic.visual.theme
unit ThemePropertiesView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, ThemeInterface;

type
  {AB:TYPES}
  TThemePropertiesView = class(TInterfacedObject, IDomNodeInterface)
  public
    themeInterface: IThemeInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(themeInterface_: IThemeInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ThemeData, ModDomHelper;


{AB:CODE}

procedure TThemePropertiesView.InitFields;
begin
  
end;

function TThemePropertiesView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TThemePropertiesView.Create(themeInterface_: IThemeInterface);
begin
    inherited Create;
    InitFields;
        Self.themeInterface := themeInterface_;
end;
    

// throws Exception
function TThemePropertiesView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createNameValueNodes(document_, TThemeData.getInstance().NAME, Self.themeInterface.toHashMap());
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

