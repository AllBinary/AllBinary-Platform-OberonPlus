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
// package org.allbinary.graphics.canvas.transition.progress
unit AndroidBasicTitleProgressBar;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, Activity, Animation, BasicColor, DisplayChangeEvent, DisplayChangeEventListener, AllBinaryEventObject, ARunnable, ProgressCanvas, EventListenerInterface;

type
  {AB:TYPES}
  TAndroidBasicTitleProgressBar = class(TProgressCanvas, IDisplayChangeEventListener, IEventListenerInterface)
  public
    showTitleProgressBarRunnable: TARunnable;
    dismissTitleProgressBarRunnable: TARunnable;
    titleProgressDialogPortionSetProgressRunnable: TARunnable;
    titleProgressDialogSetProgressRunnable: TARunnable;
    midletActivity: TActivity;
    portion: Integer;
    IMAGE_: TArray<TImage>;
    image: TImage;
    animation: TAnimation;
    class var RESOURCE: string;
    class var background: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure init;
        procedure initActivity(activity_: TActivity); virtual;
        procedure updateCurrent;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure loadProgressImages;
        function isInitialized: Boolean; virtual;
        procedure start; virtual;
        procedure end_; virtual;
        procedure addEarlyPortion(value: Integer; text: string; index: Integer); virtual;
        procedure addPortion(value: Integer; text: string; index: Integer); virtual;
        procedure addNormalPortion(value: Integer; text: string); virtual;
        procedure setValue(value: Integer); virtual;
        procedure waitUntilDisplayed; virtual;
        procedure setImages(index: Integer; lastWidth: Integer; lastHeight: Integer);
        procedure initOpenGL(graphics_: TGraphics); virtual;
        procedure update(graphics_: TGraphics); virtual;
        function getImage(index: Integer): TImage;
        procedure paint2(graphics_: TGraphics); virtual;
        class procedure setBackgroundResource(background: Integer); static;
        procedure setBackground(background: Boolean); virtual;
        procedure setPortion(portion: Integer); virtual;
        function getPortion: Integer; virtual;
  end;

implementation
uses
  ShowTitleProgressBarRunnable, DismissTitleProgressBarRunnable, TitleProgressBarSetProgressRunnable, TitleProgressBarPortionSetProgressRunnable, NullImage, AndroidUtil, GameFeatureImageCacheFactory, PreResourceImageUtil, ForcedLogUtil, ExceptionUtil, NullAnimationFactory, Features, MainFeatureFactory, DisplayInfoSingleton, DisplayChangeEventHandler, ImageCacheFactory, ImageScaleUtil, AnimationBehavior, ImageAnimation, ResourceUtil, EventStrings, NullRunnable;


{AB:CODE}

procedure TAndroidBasicTitleProgressBar.InitFields;
begin
  Self.showTitleProgressBarRunnable := TNullRunnable.getInstance();
  Self.dismissTitleProgressBarRunnable := TNullRunnable.getInstance();
  Self.titleProgressDialogPortionSetProgressRunnable := TNullRunnable.getInstance();
  Self.titleProgressDialogSetProgressRunnable := TNullRunnable.getInstance();
  Self.midletActivity := TAndroidUtil.NULL_ACTIVITY;
  Self.portion := 0;
  Self.IMAGE_ := TJava.NewArray<TImage>(4);
  Self.image := TNullImage.NULL_IMAGE;
  Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
end;

function TAndroidBasicTitleProgressBar.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAndroidBasicTitleProgressBar.Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  size: Integer;
  index: Integer;
begin
        inherited Create(title, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.init();
        TDisplayChangeEventHandler.getInstance().addListenerInterface(Self);
        size := System.Length(Self.IMAGE_);
        for index := 0 to size - 1 do begin
            Self.IMAGE_[index] := TNullImage.NULL_IMAGE;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.init;
begin
        try
            if (TAndroidBasicTitleProgressBar.background) <> (0) then begin
                TResourceUtil.getInstance().addResource(TAndroidBasicTitleProgressBar.RESOURCE, TAndroidBasicTitleProgressBar.background);
                TGameFeatureImageCacheFactory.init();
                Self.image := TImageCacheFactory.getInstance().getWithKey(TJava.Box(TAndroidBasicTitleProgressBar.RESOURCE));
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.initActivity(activity_: TActivity);
begin
        try
            if (Self.midletActivity) <> (activity_) then begin
                Self.midletActivity := activity_;
                Self.showTitleProgressBarRunnable := TShowTitleProgressBarRunnable.Create(Self.midletActivity, Self);
                Self.dismissTitleProgressBarRunnable := TDismissTitleProgressBarRunnable.Create(Self.midletActivity, Self);
                Self.titleProgressDialogSetProgressRunnable := TTitleProgressBarSetProgressRunnable.Create(Self.midletActivity, Self);
                Self.titleProgressDialogPortionSetProgressRunnable := TTitleProgressBarPortionSetProgressRunnable.Create(Self.midletActivity, Self);
                Self.loadProgressImages();
            end;
            Self.updateCurrent();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.updateCurrent;
var
  displayInfo: TDisplayInfoSingleton;
  currentImage: TImage;
begin
        try
            if not (Self.isBackground()) then begin
                Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end else if (TAndroidBasicTitleProgressBar.background) <> (0) then begin
                displayInfo := TDisplayInfoSingleton.getInstance();
                
                if displayInfo.isPortrait() then begin
                    currentImage := Self.getImage(0);
                end else begin
                    currentImage := Self.getImage(2);
                end;
                if (currentImage) = (nil) then begin
                    Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
                end else begin
                    Self.animation := TImageAnimation.Create(currentImage, TAnimationBehavior.getInstance());
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.UPDATE, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TAndroidBasicTitleProgressBar.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
begin
        try
            Self.loadProgressImages();
            Self.updateCurrent();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF((Self.commonStrings.EXCEPTION_LABEL) + (TExceptionUtil.getInstance().getStackTrace(e)), TJava.Box(Self), Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
            Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.loadProgressImages;
var
  displayInfo: TDisplayInfoSingleton;
  lastWidth: Integer;
  lastHeight: Integer;
begin
        try
            displayInfo := TDisplayInfoSingleton.getInstance();
            lastWidth := displayInfo.getLastWidth();
            lastHeight := displayInfo.getLastHeight();
            if displayInfo.isPortraitWH(lastWidth, lastHeight) then begin
                Self.setImages(0, lastWidth, lastHeight);
            end else begin
                Self.setImages(2, lastWidth, lastHeight);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF('IllegalArgumentException ' + TJava.ToString(TExceptionUtil.getInstance().getStackTrace(e)), TJava.Box(Self), 'loadProgressImages');
            Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.putF((Self.commonStrings.EXCEPTION_LABEL) + (TExceptionUtil.getInstance().getStackTrace(e)), TJava.Box(Self), 'loadProgressImages');
            Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end;
        end;
end;
    

function TAndroidBasicTitleProgressBar.isInitialized: Boolean;
begin
        if (Self.midletActivity) <> (TAndroidUtil.NULL_ACTIVITY) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.start;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.START_METHOD_NAME);
            inherited start();
            Self.midletActivity.runOnUiThread(Self.showTitleProgressBarRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.START_METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.end_;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME);
            Self.midletActivity.runOnUiThread(Self.dismissTitleProgressBarRunnable);
            inherited end_();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.addEarlyPortion(value: Integer; text: string; index: Integer);
begin
        try
            Self.portion := value;
            inherited addEarlyPortion(value, text, index);
            if (Self.midletActivity) <> (TAndroidUtil.NULL_ACTIVITY) then begin
                Self.midletActivity.runOnUiThread(Self.titleProgressDialogPortionSetProgressRunnable);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.ADD_PORTION, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.addPortion(value: Integer; text: string; index: Integer);
begin
        try
            Self.portion := value;
            inherited addPortion(value, text, index);
            Self.midletActivity.runOnUiThread(Self.titleProgressDialogPortionSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.ADD_PORTION, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.addNormalPortion(value: Integer; text: string);
begin
        try
            Self.portion := value;
            inherited addNormalPortion(value, text);
            Self.midletActivity.runOnUiThread(Self.titleProgressDialogPortionSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.ADD_PORTION, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.setValue(value: Integer);
begin
        try
            inherited setValue(value);
            Self.midletActivity.runOnUiThread(Self.titleProgressDialogSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setValue', TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.waitUntilDisplayed;
begin
end;
    

// throws Exception
procedure TAndroidBasicTitleProgressBar.setImages(index: Integer; lastWidth: Integer; lastHeight: Integer);
var
  image_: TImage;
  nextIndex: Integer;
begin
        image_ := Self.image;
        if (image_) <> (TNullImage.NULL_IMAGE) then begin
            if TFeatures.getInstance().isFeature(TMainFeatureFactory.getInstance().FULL_SCREEN) then begin
                if (Self.IMAGE_[index]) = (TNullImage.NULL_IMAGE) then begin
                    Self.IMAGE_[index] := TImageScaleUtil.getInstance().createImage2(TImageCacheFactory.getInstance(), image_, lastWidth, (1.0 * (image_.getWidth())), (lastHeight) - (20.0), (1.0 * (image_.getHeight())), False);
                end;
            end else begin
                nextIndex := (index) + (1);
                if (Self.IMAGE_[nextIndex]) = (TNullImage.NULL_IMAGE) then begin
                    Self.IMAGE_[nextIndex] := TImageScaleUtil.getInstance().createImage2(TImageCacheFactory.getInstance(), image_, lastWidth, (1.0 * (image_.getWidth())), (lastHeight) - (28.0), (1.0 * (image_.getHeight())), False);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TAndroidBasicTitleProgressBar.initOpenGL(graphics_: TGraphics);
var
  preResourceImageUtil_: TPreResourceImageUtil;
  size: Integer;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.INIT);
        Self.image := TGameFeatureImageCacheFactory.getInstance().getWithKey(TJava.Box(TAndroidBasicTitleProgressBar.RESOURCE));
        preResourceImageUtil_ := TPreResourceImageUtil.getInstance();
        size := System.Length(Self.IMAGE_);
        for index := 0 to size - 1 do begin
            if (Self.IMAGE_[index]) <> (TNullImage.NULL_IMAGE) then begin
                Self.IMAGE_[index] := preResourceImageUtil_.encapsulate(Self.IMAGE_[index]);
            end;
        end;
        Self.updateCurrent();
end;
    

// throws Exception
procedure TAndroidBasicTitleProgressBar.update(graphics_: TGraphics);
var
  preResourceImageUtil_: TPreResourceImageUtil;
  size: Integer;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.UPDATE);
        Self.initOpenGL(graphics_);
        Self.image := TGameFeatureImageCacheFactory.getInstance().getWithKey(TJava.Box(TAndroidBasicTitleProgressBar.RESOURCE));
        preResourceImageUtil_ := TPreResourceImageUtil.getInstance();
        size := System.Length(Self.IMAGE_);
        for index := 0 to size - 1 do begin
            if (Self.IMAGE_[index]) <> (TNullImage.NULL_IMAGE) then begin
                preResourceImageUtil_.update(graphics_, Self.IMAGE_[index]);
            end;
        end;
end;
    

// throws Exception
function TAndroidBasicTitleProgressBar.getImage(index: Integer): TImage;
var
  image_: TImage;
begin
        image_ := TNullImage.NULL_IMAGE;
        if TFeatures.getInstance().isFeature(TMainFeatureFactory.getInstance().FULL_SCREEN) then begin
            image_ := Self.IMAGE_[index];
        end else begin
            image_ := Self.IMAGE_[(index) + (1)];
        end;
        Exit(image_);
end;
    

procedure TAndroidBasicTitleProgressBar.paint2(graphics_: TGraphics);
begin
        try
            Self.animation.paintXY(graphics_, 0, 20);
            inherited paint2(graphics_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.canvasStrings.PAINT, TJava.Box(e));
            end;
        end;
end;
    

class procedure TAndroidBasicTitleProgressBar.setBackgroundResource(background: Integer);
begin
        TAndroidBasicTitleProgressBar.background := background;
end;
    

procedure TAndroidBasicTitleProgressBar.setBackground(background: Boolean);
begin
        inherited setBackground(background);
        Self.updateCurrent();
end;
    

procedure TAndroidBasicTitleProgressBar.setPortion(portion: Integer);
begin
        Self.portion := portion;
end;
    

function TAndroidBasicTitleProgressBar.getPortion: Integer;
begin
        Exit(Self.portion);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidBasicTitleProgressBar.RESOURCE := 'ProgressImage';
  
  {AB:END}

end.

