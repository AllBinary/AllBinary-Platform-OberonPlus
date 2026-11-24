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
unit RemoteHighScoresProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, LogUtil, NoCrypt, AbeClientInformationInterface, CommonStrings, RemoteHighScores, RemoteHighScoresProcessorInterface;

type
  {AB:TYPES}
  TRemoteHighScoresProcessor = class(TInterfacedObject, IRemoteHighScoresProcessorInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    noCrypt: TNoCrypt;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure process(remoteHighScores_: TRemoteHighScores; abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo); virtual;
  end;

implementation
uses
  RemoteHighScoresData, XmlRpcRemoteHighScoresClient, GameInfoData, GameConfigurationCentral, DisplayInfoSingleton, XmlRpcAbeClient, BooleanFactory, ABHashtable, HashtableUtil;


{AB:CODE}

procedure TRemoteHighScoresProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.noCrypt := TNoCrypt.Create();
end;

function TRemoteHighScoresProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRemoteHighScoresProcessor.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TRemoteHighScoresProcessor.process(remoteHighScores_: TRemoteHighScores; abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo);
var
  gameInfoData_: TGameInfoData;
  hashtable: TABHashtable<TObject, TObject>;
  displayInfoSingleton_: TDisplayInfoSingleton;
  resultHashtable: TABHashtable<TObject, TObject>;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF('Begin Remote HighScores Retrieval', TJava.Box(Self), Self.commonStrings.PROCESS);
        gameInfoData_ := TGameInfoData.getInstance();
        hashtable := abeClientInformation.toHashtable();
        THashtableUtil.getInstance().putAll(gameInfo_.toHashtable(), hashtable);
        hashtable.put(TJava.Box(gameInfoData_.SOFTWARE_INFORMATION), TJava.Box(remoteHighScores_.getSoftwareInformation().toString()));
        hashtable.put(TJava.Box(remoteHighScores_.ASCENDING), TJava.Box(remoteHighScores_.getAscending().toString()));
        displayInfoSingleton_ := TDisplayInfoSingleton.getInstance();
        hashtable.put(TJava.Box(displayInfoSingleton_.ORIENTATION), TJava.Box(TBooleanFactory.getInstance().toStringb(displayInfoSingleton_.isPortrait())));
        hashtable.put(TJava.Box(TRemoteHighScoresData.getInstance().GAME_CONFIGURATION), TJava.Box(TGameConfigurationCentral.getInstance().toString()));
        if TXmlRpcAbeClient.isOnline then begin
            resultHashtable := TABHashtable<TObject, TObject>(TJava.ToObject(TXmlRpcRemoteHighScoresClient.Create(abeClientInformation, 'highscoresservicessl.php', 'HighScoresService.process').get(hashtable, Self.noCrypt)));
            remoteHighScores_.update(resultHashtable);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

