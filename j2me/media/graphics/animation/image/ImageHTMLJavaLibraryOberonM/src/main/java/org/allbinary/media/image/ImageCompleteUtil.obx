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
// package org.allbinary.media.image
unit ImageCompleteUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, TimeDelayHelper;

type
  {AB:TYPES}
  TImageCompleteUtil = class(TObject)
  public
    timeDelayHelper: TTimeDelayHelper;
    allTimeDelayHelper: TTimeDelayHelper;
    class var instance: TImageCompleteUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TImageCompleteUtil; static;
        procedure waitForImage(image_: TImage; name: string); virtual;
        function isReady(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper): Boolean; virtual;
        procedure waitForATime(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper);
        procedure waitForAll; virtual;
  end;

implementation
uses
  Hashtable, GameFeatureImageCacheFactory, PreLogUtil, HashtableUtil, PlaynImage;


{AB:CODE}

procedure TImageCompleteUtil.InitFields;
begin
  Self.timeDelayHelper := TTimeDelayHelper.Create(18000);
  Self.allTimeDelayHelper := TTimeDelayHelper.Create(120000);
end;

constructor TImageCompleteUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TImageCompleteUtil.getInstance: TImageCompleteUtil;
begin
        Exit(TImageCompleteUtil.instance);
end;
    

// throws Exception
procedure TImageCompleteUtil.waitForImage(image_: TImage; name: string);
begin
        Self.timeDelayHelper.setStartTime();
        Self.waitForATime(image_, name, Self.timeDelayHelper);
end;
    

// throws Exception
function TImageCompleteUtil.isReady(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper): Boolean;
var
  playnImage_: TPlaynImage;
begin
        playnImage_ := TPlaynImage(TJava.ToObject(image_));
        if (not (playnImage_.getImage().isReady())) and (((playnImage_.getImage().width()) + (playnImage_.getImage().height())) = (0)) then begin
            if timeDelayHelper_.isTime() then begin
                raise SysUtils.Exception.Create('isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ' + name);
            end;
            Exit(False);
        end;
        Exit(True);
end;
    

// throws Exception
procedure TImageCompleteUtil.waitForATime(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper);
var
  playnImage_: TPlaynImage;
begin
        playnImage_ := TPlaynImage(TJava.ToObject(image_));
        while (not (playnImage_.getImage().isReady())) and (((playnImage_.getImage().width()) + (playnImage_.getImage().height())) = (0)) do begin
            if timeDelayHelper_.isTime() then begin
                raise SysUtils.Exception.Create('waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ' + name);
            end;
        end;
end;
    

// throws Exception
procedure TImageCompleteUtil.waitForAll;
var
  hashtable_: TJavaHashtable<TObject, TObject>;
  objectArray: TArray<TObject>;
  size: Integer;
  index: Integer;
begin
        Self.allTimeDelayHelper.setStartTime();
        hashtable_ := TGameFeatureImageCacheFactory.getInstance().getHashtable();
        objectArray := THashtableUtil.getInstance().getKeysAsArray(hashtable_);
        size := System.Length(objectArray);
        TPreLogUtil.put('Total: ' + IntToStr(size), TJava.Box(Self), 'waitForAll');
        for index := 0 to size - 1 do begin
            Self.waitForATime(TImage(TJava.ToObject(hashtable_.get(TJava.Box(objectArray[index])))), TJava.UnboxString(TJava.ToObject(objectArray[index])), Self.allTimeDelayHelper);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageCompleteUtil.instance := TImageCompleteUtil.Create();
  {AB:END}

end.

