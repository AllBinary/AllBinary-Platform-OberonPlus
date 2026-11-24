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
// package org.allbinary.game.displayable.canvas
unit PreGameLockableFormPaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ItemPaintable, ItemPaintableFactory, PaintableForm;

type
  {AB:TYPES}
  TPreGameLockableFormPaintableFactory = class(TItemPaintableFactory)
  public
    lockedIndex: Integer;
    procedure InitFields;
        constructor Create(lockedIndex: Integer);
        function getInstanceItemPaintable(paintableForm_: TPaintableForm): TItemPaintable; override;
  end;

implementation
uses
  PreGameLockablePaintable, ScrollCurrentSelectionForm;


{AB:CODE}

procedure TPreGameLockableFormPaintableFactory.InitFields;
begin
  
end;
    

constructor TPreGameLockableFormPaintableFactory.Create(lockedIndex: Integer);
begin
    inherited Create;
    InitFields;
        Self.lockedIndex := lockedIndex;
end;
    

// throws Exception
function TPreGameLockableFormPaintableFactory.getInstanceItemPaintable(paintableForm_: TPaintableForm): TItemPaintable;
begin
        Exit(TPreGameLockablePaintable.Create(TScrollCurrentSelectionForm(TJava.ToObject(paintableForm_)), Self.lockedIndex));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

