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
// package org.allbinary.graphics.j2me.workarea.tools
unit GraphicItemBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Node, GraphicItemInterface;

type
  {AB:TYPES}
  TGraphicItemBuilder = class(TObject)
  public
        constructor Create;
        class function getInstance(node_: TNode): IGraphicItemInterface; static;
  end;

implementation
uses
  PointsDomUtil, LinesGraphicItem;


{AB:CODE}
    

constructor TGraphicItemBuilder.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TGraphicItemBuilder.getInstance(node_: TNode): IGraphicItemInterface;
var
  graphicItemName: string;
begin
        graphicItemName := node_.getNodeName();
        if (CompareStr(graphicItemName, TPointsDomUtil.getInstance().LINES)) = (0) then begin
            Exit(TLinesGraphicItem.Create(node_));
        end else begin
            raise SysUtils.Exception.Create('Graphic Item Does Not Exist: ' + graphicItemName);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

