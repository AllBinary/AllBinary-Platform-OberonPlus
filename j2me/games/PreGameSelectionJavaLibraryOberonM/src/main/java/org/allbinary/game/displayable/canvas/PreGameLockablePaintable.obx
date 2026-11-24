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
unit PreGameLockablePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, LockablePaintable, ScrollCurrentSelectionForm;

type
  {AB:TYPES}
  TPreGameLockablePaintable = class(TLockablePaintable)
  public
    halfWidth: Integer;
    paintableForm: TScrollCurrentSelectionForm;
    procedure InitFields;
        constructor Create(paintableForm: TScrollCurrentSelectionForm; lockedIndex: Integer);
        procedure paint(graphics_: TGraphics; currentIndex: Integer; x: Integer; y: Integer); override;
        function getPaintableForm: TScrollCurrentSelectionForm; virtual;
  end;

implementation
uses
  GameFeatureImageCacheFactory, LockedResources, LockedUtil;


{AB:CODE}

procedure TPreGameLockablePaintable.InitFields;
begin
  
  
end;
    

constructor TPreGameLockablePaintable.Create(paintableForm: TScrollCurrentSelectionForm; lockedIndex: Integer);
begin
        inherited Create(lockedIndex);
        InitFields;
        Self.paintableForm := paintableForm;
        Self.halfWidth := TJava.Divide(TGameFeatureImageCacheFactory.getInstance().getWithKey(TJava.Box(TLockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE)).getWidth(), 2);
end;
    

procedure TPreGameLockablePaintable.paint(graphics_: TGraphics; currentIndex: Integer; x: Integer; y: Integer);
begin
        if (TLockedUtil.getInstance().isLocked()) and ((Self.getPaintableForm().getSelectedIndex()) >= (Self.getLockedIndex())) then begin
            Self.getAnimation().paintXY(graphics_, (Self.getPaintableForm().getDx()) - (Self.halfWidth), (Self.getPaintableForm().getDy()) + (34));
        end;
end;
    

function TPreGameLockablePaintable.getPaintableForm: TScrollCurrentSelectionForm;
begin
        Exit(Self.paintableForm);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

