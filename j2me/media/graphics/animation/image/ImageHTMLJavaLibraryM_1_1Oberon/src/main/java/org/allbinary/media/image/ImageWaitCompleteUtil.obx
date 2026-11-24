{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.image
unit ImageWaitCompleteUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, LogUtil, TimeDelayHelper, ImageCompleteUtil;

type
  {AB:TYPES}
  TImageWaitCompleteUtil = class(TImageCompleteUtil)
  public
    logUtil: TLogUtil;
    timeDelayHelper: TTimeDelayHelper;
    allTimeDelayHelper: TTimeDelayHelper;
    procedure InitFields;
        constructor Create;
        procedure waitForImage(image_: TImage; name: string); override;
        procedure handleTimeout(name: string); virtual;
        procedure waitForATime(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper);
        procedure waitForAll; virtual;
  end;

implementation
uses
  GameFeatureImageCacheFactory, PreLogUtil, ABHashtable, HashtableUtil, PlaynImage;


{AB:CODE}

procedure TImageWaitCompleteUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.timeDelayHelper := TTimeDelayHelper.Create(18000);
  Self.allTimeDelayHelper := TTimeDelayHelper.Create(120000);
end;
    

constructor TImageWaitCompleteUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TImageWaitCompleteUtil.waitForImage(image_: TImage; name: string);
begin
        Self.timeDelayHelper.setStartTimeTNT();
        Self.waitForATime(image_, name, Self.timeDelayHelper);
end;
    

// throws Exception
procedure TImageWaitCompleteUtil.handleTimeout(name: string);
begin
        if Self.timeDelayHelper.isTimeTNT() then begin
            raise SysUtils.Exception.Create('isReady: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ' + name);
        end;
end;
    

// throws Exception
procedure TImageWaitCompleteUtil.waitForATime(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper);
var
  playnImage_: TPlaynImage;
  playnCoreImage: TImage;
begin
        playnImage_ := TPlaynImage(TJava.ToObject(image_));
        playnCoreImage := TImage(TJava.ToObject(playnImage_.getImage()));
        while (not (playnCoreImage.isReady())) or (((playnCoreImage.width()) + (playnCoreImage.height())) <= (0)) do begin
            if timeDelayHelper_.isTimeTNT() then begin
                raise SysUtils.Exception.Create('waitFor: Timeout Waiting or GameHtmlHasLoadedResourcesProcessor does not have this Image: ' + name);
            end;
        end;
        if not (image_.isReady()) then begin
            image_.init(image_.getImage());
        end;
end;
    

// throws Exception
procedure TImageWaitCompleteUtil.waitForAll;
var
  hashtable: TABHashtable<TObject, TObject>;
  objectArray: TArray<TObject>;
  size: Integer;
  index: Integer;
begin
        Self.allTimeDelayHelper.setStartTimeTNT();
        hashtable := TGameFeatureImageCacheFactory.getInstance().getHashtableP();
        objectArray := THashtableUtil.getInstance().getKeysAsArray(hashtable);
        size := System.Length(objectArray);
        TPreLogUtil.put('Image Total: ' + IntToStr(size), TJava.Box(Self), 'waitForAll');
        for index := 0 to size - 1 do begin
            Self.waitForATime(TImage(TJava.ToObject(hashtable.get(TJava.Box(objectArray[index])))), TJava.UnboxString(TJava.ToObject(objectArray[index])), Self.allTimeDelayHelper);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

