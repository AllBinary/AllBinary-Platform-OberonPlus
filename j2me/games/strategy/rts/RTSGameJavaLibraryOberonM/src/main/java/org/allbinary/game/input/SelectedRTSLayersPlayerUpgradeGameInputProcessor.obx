{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.input
unit SelectedRTSLayersPlayerUpgradeGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, AllBinaryLayerManager, SelectedRTSLayersPlayerGameInput, SelectedRTSLayersPlayerGameInputProcessor;

type
  {AB:TYPES}
  TSelectedRTSLayersPlayerUpgradeGameInputProcessor = class(TSelectedRTSLayersPlayerGameInputProcessor)
  public
        constructor Create(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput);
        procedure processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); override;
  end;

implementation

{AB:CODE}
    

constructor TSelectedRTSLayersPlayerUpgradeGameInputProcessor.Create(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput);
begin
        inherited Create(selectedRTSLayersPlayerGameInput_);
end;
    

// throws Exception
procedure TSelectedRTSLayersPlayerUpgradeGameInputProcessor.processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
        Self.selectedRTSLayersPlayerGameInput.upgrade();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

