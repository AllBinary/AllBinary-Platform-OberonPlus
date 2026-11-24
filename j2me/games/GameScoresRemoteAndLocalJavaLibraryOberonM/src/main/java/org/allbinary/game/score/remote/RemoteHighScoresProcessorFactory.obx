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
// package org.allbinary.game.score.remote
unit RemoteHighScoresProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RemoteHighScoresProcessorInterface;

type
  {AB:TYPES}
  TRemoteHighScoresProcessorFactory = class(TObject)
  public
    class var SINGLETON: IRemoteHighScoresProcessorInterface;
    constructor Create;
        class function getInstance: IRemoteHighScoresProcessorInterface; static;
  end;

implementation
uses
  RemoteHighScoresProcessor;


{AB:CODE}

constructor TRemoteHighScoresProcessorFactory.Create;
begin
  inherited Create;
end;
    

class function TRemoteHighScoresProcessorFactory.getInstance: IRemoteHighScoresProcessorInterface;
begin
        Exit(TRemoteHighScoresProcessorFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TRemoteHighScoresProcessorFactory.SINGLETON := TRemoteHighScoresProcessor.Create();
  {AB:END}

end.

