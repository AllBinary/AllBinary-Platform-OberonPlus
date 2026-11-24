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
    ISREADY_: string;
    COMPLETE: string;
    class var instance: TImageCompleteUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TImageCompleteUtil; static;
        procedure waitForImage(image_: TImage; name: string); virtual;
        function isReady(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper): Boolean; virtual;
        procedure handleTimeout(name: string); virtual;
        procedure waitForAll; virtual;
  end;

implementation
uses
  PreLogUtil, CommonStrings, PlaynImage, CoreImage;


{AB:CODE}

procedure TImageCompleteUtil.InitFields;
begin
  Self.ISREADY_ := 'isReady';
  Self.COMPLETE := 'Image loading complete for: ';
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
end;
    

// throws Exception
function TImageCompleteUtil.isReady(image_: TImage; name: string; timeDelayHelper_: TTimeDelayHelper): Boolean;
var
  playnImage_: TPlaynImage;
  playnCoreImage: TCoreImage;
  commonStrings_: TCommonStrings;
begin
        playnImage_ := TPlaynImage(TJava.ToObject(image_));
        playnCoreImage := TCoreImage(TJava.ToObject(playnImage_.getImage()));
        if (not (playnCoreImage.isReady())) or (((playnCoreImage.width()) + (playnCoreImage.height())) <= (0)) then begin
            Self.handleTimeout(name);
            Exit(False);
        end;
        if not (image_.isReady()) then begin
            image_.init(image_.getImage());
            if not (image_.isReady()) then begin
                TPreLogUtil.put('Waiting for Not Ready Image: ' + image_.getName(), TJava.Box(Self), Self.ISREADY_);
            end;
        end;
        commonStrings_ := TCommonStrings.getInstance();
        TPreLogUtil.put(Self.COMPLETE + image_.getName(), TJava.Box(Self), commonStrings_.SUCCESS);
        Exit(True);
end;
    

// throws Exception
procedure TImageCompleteUtil.handleTimeout(name: string);
begin
end;
    

// throws Exception
procedure TImageCompleteUtil.waitForAll;
begin
end;

initialization
  {AB:INITIALIZATION}
  TImageCompleteUtil.instance := TImageCompleteUtil.Create();
  {AB:END}

end.

