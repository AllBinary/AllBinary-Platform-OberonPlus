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
unit RemoteHighScoresSubmissionProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RemoteHighScoresSubmissionProcessorInterface;

type
  {AB:TYPES}
  TRemoteHighScoresSubmissionProcessorFactory = class(TObject)
  public
    class var SINGLETON: IRemoteHighScoresSubmissionProcessorInterface;
    constructor Create;
        class function getInstance: IRemoteHighScoresSubmissionProcessorInterface; static;
  end;

implementation
uses
  RemoteHighScoresSubmissionProcessor;


{AB:CODE}

constructor TRemoteHighScoresSubmissionProcessorFactory.Create;
begin
  inherited Create;
end;
    

class function TRemoteHighScoresSubmissionProcessorFactory.getInstance: IRemoteHighScoresSubmissionProcessorInterface;
begin
        Exit(TRemoteHighScoresSubmissionProcessorFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TRemoteHighScoresSubmissionProcessorFactory.SINGLETON := TRemoteHighScoresSubmissionProcessor.Create();
  {AB:END}

end.

