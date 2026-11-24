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
unit LinesGraphicItemFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CanvasJPanel, GraphicItemInterface, GraphicsItemInterfaceFactoryInterface;

type
  {AB:TYPES}
  TLinesGraphicItemFactory = class(TInterfacedObject, IGraphicsItemInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(canvasJPanel_: TCanvasJPanel): IGraphicItemInterface; virtual;
  end;

implementation
uses
  LinesGraphicItem;


{AB:CODE}

function TLinesGraphicItemFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TLinesGraphicItemFactory.Create;
begin
  inherited Create;
end;
    

function TLinesGraphicItemFactory.getInstance(canvasJPanel_: TCanvasJPanel): IGraphicItemInterface;
begin
        Exit(TLinesGraphicItem.Create());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

