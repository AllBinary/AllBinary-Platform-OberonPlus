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
unit RemoteHighScoresSubmissionProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScore, LogUtil, NoCrypt, AbeClientInformationInterface, CommonStrings, RemoteHighScores, RemoteHighScoresSubmissionProcessorInterface;

type
  {AB:TYPES}
  TRemoteHighScoresSubmissionProcessor = class(TInterfacedObject, IRemoteHighScoresSubmissionProcessorInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    noCrypt: TNoCrypt;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure process(remoteHighScores_: TRemoteHighScores; abeClientInformation: IAbeClientInformationInterface; highScore_: THighScore); virtual;
  end;

implementation
uses
  RemoteHighScoresData, XmlRpcRemoteHighScoresClient, GameInfoData, GameConfigurationCentral, DisplayInfoSingleton, XmlRpcAbeClient, BooleanFactory, ABHashtable, HashtableUtil;


{AB:CODE}

procedure TRemoteHighScoresSubmissionProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.noCrypt := TNoCrypt.Create();
end;

function TRemoteHighScoresSubmissionProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRemoteHighScoresSubmissionProcessor.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TRemoteHighScoresSubmissionProcessor.process(remoteHighScores_: TRemoteHighScores; abeClientInformation: IAbeClientInformationInterface; highScore_: THighScore);
var
  gameInfoData_: TGameInfoData;
  hashtable: TABHashtable<TObject, TObject>;
  displayInfoSingleton_: TDisplayInfoSingleton;
  resultHashtable: TABHashtable<TObject, TObject>;
begin
    TJava.MonitorEnter(Self);
    try
        try
            Self.logUtil.putF('Begin Remote HighScores Submission', TJava.Box(Self), Self.commonStrings.PROCESS);
            gameInfoData_ := TGameInfoData.getInstance();
            hashtable := abeClientInformation.toHashtable();
            THashtableUtil.getInstance().putAll(highScore_.getGameInfo().toHashtable(), hashtable);
            hashtable.put(TJava.Box(TRemoteHighScoresData.getInstance().CUSTOMER_USER_NAME), TJava.Box('None'));
            hashtable.put(TJava.Box(TRemoteHighScoresData.getInstance().DISPLAY_NAME), TJava.Box(highScore_.getName()));
            hashtable.put(TJava.Box(gameInfoData_.SOFTWARE_INFORMATION), TJava.Box(remoteHighScores_.getSoftwareInformation().toString()));
            hashtable.put(TJava.Box(remoteHighScores_.ASCENDING), TJava.Box(remoteHighScores_.getAscending().toString()));
            displayInfoSingleton_ := TDisplayInfoSingleton.getInstance();
            hashtable.put(TJava.Box(displayInfoSingleton_.ORIENTATION), TJava.Box(TBooleanFactory.getInstance().toStringb(displayInfoSingleton_.isPortrait())));
            hashtable.put(TJava.Box(TRemoteHighScoresData.getInstance().GAME_CONFIGURATION), TJava.Box(TGameConfigurationCentral.getInstance().toString()));
            hashtable.put(TJava.Box(TRemoteHighScoresData.getInstance().SCORE), TJava.Box(IntToStr(highScore_.getScore())));
            if TXmlRpcAbeClient.isOnline then begin
                resultHashtable := TABHashtable<TObject, TObject>(TJava.ToObject(TXmlRpcRemoteHighScoresClient.Create(abeClientInformation, 'highscoresubmissionservicessl.php', 'HighScoreSubmissionService.process').get(hashtable, Self.noCrypt)));
                remoteHighScores_.update(resultHashtable);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

