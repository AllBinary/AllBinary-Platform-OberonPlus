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
unit RemoteHighScores;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, HighScore, HighScores, LogUtil, SoftwareInformation, AbeClientInformationInterface, ABHashtable, EnumerationUtil;

type
  {AB:TYPES}
  TRemoteHighScores = class(THighScores)
  public
    logUtil: TLogUtil;
    enumerationUtil: TEnumerationUtil;
    abeClientInformation: IAbeClientInformationInterface;
    softwareInformation: TSoftwareInformation;
    ascending: Boolean;
    ASCENDING_: string;
    class var hashTable: TABHashtable<TObject, TObject>;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation; gameInfo_: TGameInfo; heading: string; columnTwoHeading: string; ascending: Boolean; preload: Boolean);
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation; gameInfo_: TGameInfo; heading: string; columnTwoHeading: string; isAscending: Boolean): THighScores; static;
        class function getInstancePreload(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation; gameInfo_: TGameInfo; heading: string; columnTwoHeading: string; isAscending: Boolean; preload: Boolean): THighScores; static;
        procedure addHighScore(newHighScore: THighScore); virtual;
        procedure update(hashtable: TABHashtable<TObject, TObject>); virtual;
        procedure setAscending(ascending: Boolean);
        function getAscending: Boolean; virtual;
        function getSoftwareInformation: TSoftwareInformation; virtual;
  end;

implementation
uses
  RemoteHighScoresProcessorFactory, RemoteHighScoresSubmissionProcessorFactory, RemoteHighScoresData, BasicArrayList, RemoteErrorHighScoresSingletonFactory, StdUtil, StringMaker, CommonLabels, CommonStrings;


{AB:CODE}

procedure TRemoteHighScores.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.enumerationUtil := TEnumerationUtil.getInstance();
  
  
  
  Self.ASCENDING_ := 'ASCENDING';
end;
    

constructor TRemoteHighScores.Create(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation; gameInfo_: TGameInfo; heading: string; columnTwoHeading: string; ascending: Boolean; preload: Boolean);
begin
        inherited Create(gameInfo_.toString(), heading, columnTwoHeading);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.softwareInformation := softwareInformation_;
        Self.setAscending(ascending);
        if preload then begin
            TRemoteHighScoresProcessorFactory.getInstance().process(Self, Self.abeClientInformation, gameInfo_);
        end;
end;
    

class function TRemoteHighScores.getInstance(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation; gameInfo_: TGameInfo; heading: string; columnTwoHeading: string; isAscending: Boolean): THighScores;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TRemoteHighScores.getInstancePreload(abeClientInformation, softwareInformation_, gameInfo_, heading, columnTwoHeading, isAscending, True));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TRemoteHighScores.getInstancePreload(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation; gameInfo_: TGameInfo; heading: string; columnTwoHeading: string; isAscending: Boolean; preload: Boolean): THighScores;
var
  logUtil_: TLogUtil;
  highScores_: THighScores;
  commonStrings_: TCommonStrings;
begin
    TJava.MonitorEnter(nil);
    try
        logUtil_ := TLogUtil.getInstance();
        try
            highScores_ := THighScores(TJava.ToObject(TRemoteHighScores.hashTable.get(TJava.Box(gameInfo_))));
            if (highScores_) = (nil) then begin
                highScores_ := TRemoteHighScores.Create(abeClientInformation, softwareInformation_, gameInfo_, heading, columnTwoHeading, isAscending, preload);
                TRemoteHighScores.hashTable.put(TJava.Box(gameInfo_), TJava.Box(highScores_));
            end;
            Exit(highScores_);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(TRemoteErrorHighScoresSingletonFactory.getInstance()), commonStrings_.GET_INSTANCE, TJava.Box(e));
            Exit(TRemoteErrorHighScoresSingletonFactory.getInstance());
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

procedure TRemoteHighScores.addHighScore(newHighScore: THighScore);
begin
        TRemoteHighScoresSubmissionProcessorFactory.getInstance().process(Self, Self.abeClientInformation, newHighScore);
end;
    

procedure TRemoteHighScores.update(hashtable: TABHashtable<TObject, TObject>);
var
  vector: TBasicArrayList;
  NEXT_ELEMENT: string;
  commonStrings_: TCommonStrings;
  enumeration: TObject;
  nextElement: TObject;
  size: Integer;
  highScoreVector: TBasicArrayList;
  displayName: string;
  score: string;
  longScore: Int64;
  highScore_: THighScore;
  index: Integer;
begin
        Self.getList().clear();
        vector := TBasicArrayList(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(TRemoteHighScoresData.getInstance().HIGH_SCORES)))));
        if (vector) <> (nil) then begin
            size := vector.size();
            for index := 0 to size - 1 do begin
                highScoreVector := TBasicArrayList(TJava.ToObject(vector.get(index)));
                displayName := TJava.UnboxString(TJava.ToObject(highScoreVector.get(0)));
                score := TJava.UnboxString(TJava.ToObject(highScoreVector.get(1)));
                longScore := StrToInt64(score);
                highScore_ := THighScore.Create(-1, displayName, nil, longScore);
                Self.getList().add(TJava.Box(highScore_));
            end;
        end else begin
            NEXT_ELEMENT := TStringMaker.Create().append(TCommonLabels.getInstance().NEXT).append('Element: ').toString();
            commonStrings_ := TCommonStrings.getInstance();
            enumeration := hashtable.elements();
            
            while Self.enumerationUtil.hasMoreElements(enumeration) do begin
                nextElement := TJava.Box(Self.enumerationUtil.nextElement(enumeration));
                Self.logUtil.putF(NEXT_ELEMENT + TJava.ToString(nextElement), TJava.Box(Self), commonStrings_.PROCESS);
            end;
        end;
end;
    

procedure TRemoteHighScores.setAscending(ascending: Boolean);
begin
        Self.ascending := ascending;
end;
    

function TRemoteHighScores.getAscending: Boolean;
begin
        Exit(Self.ascending);
end;
    

function TRemoteHighScores.getSoftwareInformation: TSoftwareInformation;
begin
        Exit(Self.softwareInformation);
end;

initialization
  {AB:INITIALIZATION}
  TRemoteHighScores.hashTable := TStdUtil.getInstance().createHashtable();
  {AB:END}

end.

