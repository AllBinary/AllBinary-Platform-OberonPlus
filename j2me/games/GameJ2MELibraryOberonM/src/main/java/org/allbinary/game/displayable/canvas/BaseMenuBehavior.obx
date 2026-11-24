{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit BaseMenuBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DisplayChangeEvent, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TBaseMenuBehavior = class(TObject)
  public
    class var instance: TBaseMenuBehavior;
    constructor Create;
        class function getInstance: TBaseMenuBehavior; static;
        procedure onDisplayChangeEvent(allBinaryGameCanvas_: TAllBinaryGameCanvas; displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure initSpecialPaint(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure initMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure popupMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure closeMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
  end;

implementation
uses
  NullPaintable;


{AB:CODE}

constructor TBaseMenuBehavior.Create;
begin
  inherited Create;
end;
    

class function TBaseMenuBehavior.getInstance: TBaseMenuBehavior;
begin
        Exit(TBaseMenuBehavior.instance);
end;
    

// throws Exception
procedure TBaseMenuBehavior.onDisplayChangeEvent(allBinaryGameCanvas_: TAllBinaryGameCanvas; displayChangeEvent_: TDisplayChangeEvent);
begin
end;
    

procedure TBaseMenuBehavior.initSpecialPaint(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.setNonBotPaintableP(TNullPaintable.getInstance());
end;
    

// throws Exception
procedure TBaseMenuBehavior.initMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TBaseMenuBehavior.updateMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TBaseMenuBehavior.popupMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

procedure TBaseMenuBehavior.closeMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;

initialization
  {AB:INITIALIZATION}
  TBaseMenuBehavior.instance := TBaseMenuBehavior.Create();
  {AB:END}

end.

