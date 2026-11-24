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
// package org.allbinary.game.input
unit ScrollMapUpGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, AllBinaryLayerManager, ScrollMapPlayerGameInput, ScrollMapGameInputProcessor;

type
  {AB:TYPES}
  TScrollMapUpGameInputProcessor = class(TScrollMapGameInputProcessor)
  public
        constructor Create(scrollMapPlayerGameInput_: TScrollMapPlayerGameInput);
        procedure processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); override;
  end;

implementation

{AB:CODE}
    

constructor TScrollMapUpGameInputProcessor.Create(scrollMapPlayerGameInput_: TScrollMapPlayerGameInput);
begin
        inherited Create(scrollMapPlayerGameInput_);
end;
    

// throws Exception
procedure TScrollMapUpGameInputProcessor.processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
        Self.scrollMapPlayerGameInput.up();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

