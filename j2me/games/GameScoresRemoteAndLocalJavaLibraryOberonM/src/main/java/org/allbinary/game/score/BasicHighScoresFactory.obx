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
// package org.allbinary.game.score
unit BasicHighScoresFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, LogUtil, SoftwareInformation, AbeClientInformationInterface, HighScoresResultsListener, HighScoresHelperBaseInterface, HighScores, HighScoresBase;

type
  {AB:TYPES}
  TBasicHighScoresFactory = class(THighScoresBase)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    softwareInformation: TSoftwareInformation;
    highScoresArray: TArray<THighScores>;
    TOP: string;
    SCORES: string;
    PERSONAL_HIGH_SCORES: string;
    WORLD_TOP_SCORES: string;
    FETCH: string;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation);
        procedure fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener); virtual;
        procedure fetchHighScoresPreload(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener; preload: Boolean); virtual;
        function createHighScoresHelper: IHighScoresHelperBaseInterface; virtual;
        class function loaded(index2: Integer): Boolean; static;
  end;

implementation
uses
  RecordStoreHighScores, ScoreComparator, LastFetchHighScoresFactory, HighScoresHelper2, ARunnable, BasicHighScoresGameInfoFactory, GameType, GameTypeFactory, RemoteHighScores, BooleanFactory, SecondaryThreadPool;


{AB:CODE}

procedure TBasicHighScoresFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  Self.highScoresArray := TJava.NewArray<THighScores>(2);
  Self.TOP := 'Top';
  Self.SCORES := 'Scores';
  Self.PERSONAL_HIGH_SCORES := 'Personal Top Scores';
  Self.WORLD_TOP_SCORES := 'World Top Scores';
  Self.FETCH := 'fetchHighScores';
end;
    

constructor TBasicHighScoresFactory.Create(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation);
begin
    inherited Create;
    InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.softwareInformation := softwareInformation_;
end;
    

procedure TBasicHighScoresFactory.fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener);
begin
        Self.logUtil.putF('Getting Remote/Local HighScores', TJava.Box(Self), Self.FETCH);
        Self.fetchHighScoresPreload(gameInfo_, highScoresResultsListener_, True);
end;
    

procedure TBasicHighScoresFactory.fetchHighScoresPreload(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener; preload: Boolean);
begin
        TSecondaryThreadPool.getInstance().runTask(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
var
  logUtil_: TLogUtil;
  gameType_: TGameType;
  gameTypeFactory_: TGameTypeFactory;
  gameInfo2: TGameInfo;
begin
                logUtil_ := TLogUtil.getInstance();
                try
                    logUtil_.putF(Self.commonStrings.START, TJava.Box(Self), Self.FETCH);
                    Self.highScoresArray[0] := TRecordStoreHighScores.getInstance(Self.abeClientInformation, gameInfo_, Self.TOP, Self.PERSONAL_HIGH_SCORES, Self.SCORES, TScoreComparator.Create(True));
                    gameType_ := gameInfo_.getGameType();
                    gameTypeFactory_ := TGameTypeFactory.getInstance();
                    gameInfo2 := gameInfo_;
                    if ((gameType_) = (gameTypeFactory_.SINGLE_PLAYER)) or ((gameType_) = (gameTypeFactory_.BOT)) then begin
                        gameInfo2 := TBasicHighScoresGameInfoFactory.getInstance().SINGLE_PLAYER_SERVER;
                    end else if (gameType_) = (gameTypeFactory_.MULTI_PLAYER) then begin
                        gameInfo2 := TBasicHighScoresGameInfoFactory.getInstance().MULTI_PLAYER_SERVER;
                    end;
                    Self.highScoresArray[1] := TRemoteHighScores.getInstancePreload(Self.abeClientInformation, Self.softwareInformation, gameInfo2, Self.WORLD_TOP_SCORES, Self.SCORES, TBooleanFactory.getInstance().FALSE_, preload);
                    logUtil_.putF(Self.commonStrings.END_, TJava.Box(Self), Self.FETCH);
                    TLastFetchHighScoresFactory.getInstance().highScoresArray := Self.highScoresArray;
                    highScoresResultsListener_.setHighScoresArray(Self.highScoresArray);
                except
                    on e: SysUtils.Exception do begin
                    logUtil_.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.FETCH, TJava.Box(e));
                    end;
                end;
end;
*));
end;
    

function TBasicHighScoresFactory.createHighScoresHelper: IHighScoresHelperBaseInterface;
begin
        Exit(THighScoresHelper2.Create());
end;
    

class function TBasicHighScoresFactory.loaded(index2: Integer): Boolean;
begin
        if (index2) >= (0) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

