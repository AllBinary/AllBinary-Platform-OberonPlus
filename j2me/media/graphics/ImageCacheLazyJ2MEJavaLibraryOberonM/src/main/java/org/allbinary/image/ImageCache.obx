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
// package org.allbinary.image
unit ImageCache;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, TsUtil, LazyImageRotationAnimation, GameGlobalsFactory, Processor, CommonStrings, ResourceUtil, GDResources, CommonSeps, BaseImageLoadingProcessor, SynchObject, BasicArrayList, ImageCacheBase;

type
  {AB:TYPES}
  TNotHTMLProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  TNotHTMLEndProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  THTMLEndProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  TFirstProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  TImageCache = class(TImageCacheBase)
  public
    tsUtil: TTsUtil;
    concurrentImageLoadingProcessor: TBaseImageLoadingProcessor;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    resourceUtil: TResourceUtil;
    gameGlobalsFactory: TGameGlobalsFactory;
    gdResources: TGDResources;
    loadNowList: TBasicArrayList;
    loadSoonList: TBasicArrayList;
    loadList: TBasicArrayList;
    loadAfterList: TBasicArrayList;
    lock: TSynchObject;
    firstTime: Boolean;
    totalLoaded: Integer;
    progressEnded_: Boolean;
    hasAnyLazyAnimationFactories: Boolean;
    processor: TProcessor;
    endProcessor: TProcessor;
    LOAD_IMAGE_FOR_ANIMATION: string;
    class var NULL_IMAGE_CACHE: TImageCache;
    procedure InitFields;
        constructor Create;
        procedure firstProcess; virtual;
        procedure addListener(renderer: TObject); virtual;
        procedure waitForLoadNow; virtual;
        procedure loadImageForAnimation; virtual;
        procedure loadImages; virtual;
        procedure loadImageForAnimations; virtual;
        procedure loadRemainingAnimations; virtual;
        function loadImageForLazyAnimation(lazyImageRotationAnimation_: TLazyImageRotationAnimation): Boolean;
        procedure loadNextImage;
        function loadImage(image_: TImage): Boolean;
        procedure init(image_: TImage; image2: TImage); virtual;
        function creatImage(key: string): TImage; virtual;
        function get(caller: string; width: Integer; height: Integer): TImage; override;
        function getWithKey(key: TObject): TImage; override;
        function getIndex(key: TObject): Integer; virtual;
        function createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage; override;
        function createImageLater(key: string; width: Integer; height: Integer): TImage; virtual;
        function getAssociated(lazyImageRotationAnimation_: TLazyImageRotationAnimation): TBasicArrayList; virtual;
        procedure add(lazyImageRotationAnimation_: TLazyImageRotationAnimation); virtual;
        procedure insertFirst(lazyImageRotationAnimation_: TLazyImageRotationAnimation); virtual;
        procedure progressEnded; virtual;
        procedure runTask; virtual;
        procedure initProgress; override;
        function isLazy: Boolean; virtual;
  end;

implementation
uses
  ImageFactory, NullImage, J2MEUtil, LogUtil, StringMaker, ABToGBUtil, AllBinaryGameCanvas, GDLazyResources, ProgressCanvas, ProgressCanvasFactory, StringUtil, Memory, ConcurrentImageLoadingProcessor, BasicArrayListD, ABSystemWrapper;


{AB:CODE}

constructor TNotHTMLProcessor.Create;
begin
  inherited Create;
end;
    

    procedure TNotHTMLProcessor.process;
begin
            Self.concurrentImageLoadingProcessor.runTask();
end;

constructor TNotHTMLEndProcessor.Create;
begin
  inherited Create;
end;
    

    procedure TNotHTMLEndProcessor.process;
var
  progressCanvas_: TProgressCanvas;
begin
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            progressCanvas_.endIfPaintedSinceStart();
end;

constructor THTMLEndProcessor.Create;
begin
  inherited Create;
end;
    

    procedure THTMLEndProcessor.process;
var
  size: Integer;
  progressCanvas_: TProgressCanvas;
begin
            size := Self.gdResources.currentLayoutRequiredTotal;
            if (size) = (0) then begin
                progressCanvas_ := TProgressCanvasFactory.getInstance();
                progressCanvas_.endIfPaintedSinceStart();
            end else if (Self.totalLoaded) > ((size) div (12)) then begin
                progressCanvas_ := TProgressCanvasFactory.getInstance();
                progressCanvas_.endIfPaintedSinceStart();
                Self.endProcessor := TNotHTMLEndProcessor.Create();
            end;
end;

constructor TFirstProcessor.Create;
begin
  inherited Create;
end;
    

    procedure TFirstProcessor.process;
begin
            Self.firstProcess();
end;

procedure TImageCache.InitFields;
begin
  Self.tsUtil := TTsUtil.getInstance();
  Self.concurrentImageLoadingProcessor := TConcurrentImageLoadingProcessor.Create(Self);
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.resourceUtil := TResourceUtil.getInstance();
  Self.gameGlobalsFactory := TGameGlobalsFactory.getInstance();
  Self.gdResources := TGDResources.getInstance();
  Self.loadNowList := TBasicArrayListD.Create();
  Self.loadSoonList := TBasicArrayListD.Create();
  Self.loadList := TBasicArrayListD.Create();
  Self.loadAfterList := TBasicArrayListD.Create();
  Self.lock := TSynchObject.Create();
  Self.firstTime := True;
  Self.totalLoaded := 0;
  Self.progressEnded_ := False;
  Self.hasAnyLazyAnimationFactories := False;
  Self.processor := TFirstProcessor.Create();
  Self.endProcessor := TProcessor.getInstance();
  Self.LOAD_IMAGE_FOR_ANIMATION := 'Load Image Animation';
end;
    

constructor TImageCache.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TImageCache.firstProcess;
var
  logUtil_: TLogUtil;
  isHTML: Boolean;
begin
        logUtil_ := TLogUtil.getInstance();
        isHTML := TJ2MEUtil.isHTML();
        if isHTML then begin
            Self.processor := TProcessor.getInstance();
            Self.endProcessor := THTMLEndProcessor.Create();
        end else begin
            Self.processor := TNotHTMLProcessor.Create();
            Self.endProcessor := TNotHTMLEndProcessor.Create();
            try
                Self.runTask();
            except
                on e: SysUtils.Exception do begin
                logUtil_.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME);
                end;
            end;
        end;
end;
    

procedure TImageCache.addListener(renderer: TObject);
begin
end;
    

// throws Exception
procedure TImageCache.waitForLoadNow;
var
  abToGBUtil_: TABToGBUtil;
  abCanvas: TAllBinaryGameCanvas;
begin
        if Self.firstTime then begin
            abToGBUtil_ := TABToGBUtil.getInstance();
            abCanvas := TAllBinaryGameCanvas(TJava.ToObject(abToGBUtil_.abCanvas));
            while ((Self.loadNowList.isEmpty()) and (((not (abCanvas.isInitialized())) or (((abCanvas.isInitialized()) and (Self.hasAnyLazyAnimationFactories)))))) and (not (Self.progressEnded_)) do begin
                SysUtils.Sleep(120);
            end;
            Self.firstTime := False;
        end;
end;
    

// throws Exception
procedure TImageCache.loadImageForAnimation;
var
  lazyImageRotationAnimation_: TLazyImageRotationAnimation;
  list: TBasicArrayList;
  size: Integer;
  progressCanvas_: TProgressCanvas;
  isHTML: Boolean;
begin
        lazyImageRotationAnimation_ := nil;
        TJava.MonitorEnter(Self.lock);
        try
            if Self.loadNowList.isEmpty() then begin
                Self.endProcessor.process();
                if Self.loadSoonList.isEmpty() then begin
                    if Self.loadAfterList.isEmpty() then begin
                        if Self.firstTime then begin
                        end else if Self.gameGlobalsFactory.newCanvas then begin
                        end else begin
                            Self.loadNextImage();
                        end;
                        Exit;
                    end else begin
                        lazyImageRotationAnimation_ := TLazyImageRotationAnimation(TJava.ToObject(Self.loadAfterList.get(0)));
                        if Self.loadImageForLazyAnimation(lazyImageRotationAnimation_) then begin
                            Self.loadAfterList.remove(lazyImageRotationAnimation_);
                        end;
                    end;
                end else begin
                    lazyImageRotationAnimation_ := TLazyImageRotationAnimation(TJava.ToObject(Self.loadSoonList.get(0)));
                    if Self.loadImageForLazyAnimation(lazyImageRotationAnimation_) then begin
                        Self.loadSoonList.remove(lazyImageRotationAnimation_);
                    end;
                end;
                Exit;
            end;
            lazyImageRotationAnimation_ := TLazyImageRotationAnimation(TJava.ToObject(Self.loadNowList.get(0)));
        finally
            TJava.MonitorExit(Self.lock);
        end;
        if Self.loadImageForLazyAnimation(lazyImageRotationAnimation_) then begin
            TJava.MonitorEnter(Self.lock);
            try
                Self.loadNowList.remove(lazyImageRotationAnimation_);
            finally
                TJava.MonitorExit(Self.lock);
            end;
            if (lazyImageRotationAnimation_.layoutIndex) <> (0) then begin
                list := Self.getAssociated(lazyImageRotationAnimation_);
                TJava.MonitorEnter(Self.lock);
                try
                    size := list.size();
                    if (size) > (0) then begin
                        Self.loadSoonList.addAllList(list);
                    end;
                finally
                    TJava.MonitorExit(Self.lock);
                end;
            end;
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            isHTML := TJ2MEUtil.isHTML();
            if (Self.loadNowList.isEmpty()) and (((not (isHTML)) or (Self.firstTime))) then begin
                progressCanvas_.endFromInitialLazyLoadingComplete();
            end else begin
                if ((Self.totalLoaded) mod (10)) = (0) then begin
                    progressCanvas_.addNormalPortion(1, Self.LOAD_IMAGE_FOR_ANIMATION);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TImageCache.loadImages;
begin
        while (not (Self.loadList.isEmpty())) or (not (Self.loadNowList.isEmpty())) do begin
            Self.loadImageForAnimations();
            Self.loadNextImage();
        end;
end;
    

// throws Exception
procedure TImageCache.loadImageForAnimations;
begin
        while not (Self.loadNowList.isEmpty()) do begin
            Self.loadImageForAnimation();
        end;
end;
    

// throws Exception
procedure TImageCache.loadRemainingAnimations;
var
  lazyImageRotationAnimation_: TLazyImageRotationAnimation;
begin
        while (not (Self.loadAfterList.isEmpty())) or (not (Self.loadNowList.isEmpty())) do begin
            while not (Self.loadNowList.isEmpty()) do begin
                Self.loadImageForAnimation();
            end;
            lazyImageRotationAnimation_ := nil;
            TJava.MonitorEnter(Self.lock);
            try
                if not (Self.loadAfterList.isEmpty()) then begin
                    lazyImageRotationAnimation_ := TLazyImageRotationAnimation(TJava.ToObject(Self.loadAfterList.removeAt(0)));
                end;
            finally
                TJava.MonitorExit(Self.lock);
            end;
            if (lazyImageRotationAnimation_) <> (nil) then begin
                Self.loadImageForLazyAnimation(lazyImageRotationAnimation_);
            end;
        end;
end;
    

// throws Exception
function TImageCache.loadImageForLazyAnimation(lazyImageRotationAnimation_: TLazyImageRotationAnimation): Boolean;
var
  image_: TImage;
begin
        image_ := lazyImageRotationAnimation_.animationInterfaceFactoryInterface.getImage();
        if Self.loadImage(image_) then begin
            lazyImageRotationAnimation_.setRealAnimation();
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
procedure TImageCache.loadNextImage;
var
  image_: TImage;
begin
        image_ := nil;
        TJava.MonitorEnter(Self.lock);
        try
            if (Self.loadList.size()) = (0) then begin
                Exit;
            end;
            image_ := TImage(TJava.ToObject(Self.loadList.removeAt(0)));
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Self.loadImage(image_);
end;
    

// throws Exception
function TImageCache.loadImage(image_: TImage): Boolean;
var
  key: string;
  image2: TImage;
begin
        if image_.isReady() then begin
            Exit(True);
        end else begin
            if not TJava.IsNull(image_.getImage()) then begin
                if image_.setReady() then begin
                    if image_.isReady() then begin
                        Inc(Self.totalLoaded);
                        Exit(True);
                    end;
                end;
            end else begin
                key := image_.getName();
                image2 := Self.creatImage(key);
                if image2.isReady() then begin
                    Self.init(image_, image2);
                    Exit(True);
                end else begin
                    image_.setImage(image2.getImage());
                end;
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TImageCache.init(image_: TImage; image2: TImage);
begin
        image_.init(image2.getImage());
end;
    

// throws Exception
function TImageCache.creatImage(key: string): TImage;
var
  inputStream_: TInputStream;
  image_: TImage;
begin
        inputStream_ := Self.resourceUtil.getResourceAsStream(key);
        image_ := TImageFactory.getInstance().createImageFromInputStream(inputStream_);
        image_.setName(key);
        Exit(image_);
end;
    

// throws Exception
function TImageCache.get(caller: string; width: Integer; height: Integer): TImage;
var
  foundIndex: Integer;
  image_: TImage;
begin
        foundIndex := Self.getIndexWH(width, height);
        image_ := Self.getFromAvailable(foundIndex, width, height);
        if (image_) = (TNullImage.NULL_IMAGE) then begin
            Self.volume := (Self.volume) + ((width) * (height));
            if (Self.volume) > (32000) then begin
                Self.tsUtil.gc();
                Self.volume := 0;
            end;
            image_ := Self.createImage(caller, width, height);
            if (Self.nextIndex) > ((System.Length(Self.widths)) - (1)) then begin
                if (foundIndex) = (-1) then begin
                    foundIndex := Self.nextIndex;
                    Self.widths[Self.nextIndex] := width;
                    Self.heights[Self.nextIndex] := height;
                    Inc(Self.nextIndex);
                end;
                Self.listOfList[foundIndex].add(image_);
            end;
        end;
        Exit(image_);
end;
    

// throws Exception
function TImageCache.getWithKey(key: TObject): TImage;
var
  image_: TImage;
  inputStream_: TInputStream;
begin
        image_ := Self.getImage(key);
        if (image_) = (TNullImage.NULL_IMAGE) then begin
            inputStream_ := nil;
            try
                image_ := Self.createImageFromInputStream(TJava.Box(key), inputStream_);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put('Exception: Trying Again After GC', TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
                Self.logUtil.putF(TStringMaker.Create().append('InputStream: ').append(TStringUtil.getInstance().toString(inputStream_)).toString(), TJava.Box(Self), Self.commonStrings.GET);
                Self.tsUtil.gc();
                Self.tsUtil.gc();
                Self.logUtil.putF(TMemory.getInfo(), TJava.Box(Self), Self.commonStrings.GET);
                SysUtils.Sleep(100);
                image_ := Self.createImageFromInputStream(TJava.Box(key), inputStream_);
                end;
            end;
            Self.hashtable.put(TJava.Box(key), TJava.Box(image_));
        end;
        Exit(image_);
end;
    

function TImageCache.getIndex(key: TObject): Integer;
var
  gdResources_: TGDResources;
  resourceStringArray: TArray<string>;
  size: Integer;
  index: Integer;
begin
        gdResources_ := TGDResources.getInstance();
        resourceStringArray := gdResources_.resourceStringArray;
        size := System.Length(resourceStringArray);
        for index := 0 to size - 1 do begin
            if (resourceStringArray[index]) = (key) then begin
                Exit(index);
            end;
        end;
        Self.logUtil.putF(TStringMaker.Create().append('unable to find key: ').append(TStringUtil.getInstance().toString(key)).toString(), TJava.Box(Self), Self.commonStrings.RUN);
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TImageCache.createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage;
var
  gdLazyResources_: TGDLazyResources;
  resourceStringArray: TArray<string>;
  size: Integer;
  index: Integer;
  width: Integer;
  height: Integer;
  image_: TImage;
begin
        gdLazyResources_ := TGDLazyResources.getInstance();
        resourceStringArray := gdLazyResources_.requiredResourcesBeforeLoadingArray;
        size := System.Length(resourceStringArray);
        for index := 0 to size - 1 do begin
            if (key) = (resourceStringArray[index]) then begin
                Exit(Self.creatImage(TJava.UnboxString(TJava.ToObject(key))));
            end;
        end;
        Self.runTask();
        index := Self.getIndex(key);
        width := gdLazyResources_.imageResourceWidthArray[index];
        height := gdLazyResources_.imageResourceHeightArray[index];
        image_ := Self.createImageLater(TJava.UnboxString(TJava.ToObject(key)), width, height);
        TJava.MonitorEnter(Self.lock);
        try
            Self.loadList.add(TJava.Box(image_));
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Exit(image_);
end;
    

// throws Exception
function TImageCache.createImageLater(key: string; width: Integer; height: Integer): TImage;
begin
        Exit(TImage.createImageLater(key, width, height));
end;
    

function TImageCache.getAssociated(lazyImageRotationAnimation_: TLazyImageRotationAnimation): TBasicArrayList;
var
  list: TBasicArrayList;
  lazyImageRotationAnimation2: TLazyImageRotationAnimation;
  size: Integer;
  index: Integer;
  size2: Integer;
begin
        list := TBasicArrayListD.Create();
        TJava.MonitorEnter(Self.lock);
        try
            lazyImageRotationAnimation2 := nil;
            size := Self.loadAfterList.size();
            for index := 0 to size - 1 do begin
                lazyImageRotationAnimation2 := TLazyImageRotationAnimation(TJava.ToObject(Self.loadAfterList.get(index)));
                if (lazyImageRotationAnimation2.instanceId) = (lazyImageRotationAnimation_.instanceId) then begin
                    list.add(TJava.Box(lazyImageRotationAnimation2));
                end;
            end;
            size2 := list.size();
            for index := 0 to size2 - 1 do begin
                Self.loadAfterList.remove(list.get(index));
            end;
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Exit(list);
end;
    

procedure TImageCache.add(lazyImageRotationAnimation_: TLazyImageRotationAnimation);
begin
        TJava.MonitorEnter(Self.lock);
        try
            Self.loadAfterList.add(TJava.Box(lazyImageRotationAnimation_));
        finally
            TJava.MonitorExit(Self.lock);
        end;
end;
    

// throws Exception
procedure TImageCache.insertFirst(lazyImageRotationAnimation_: TLazyImageRotationAnimation);
begin
        if Self.loadNowList.contains(TJava.Box(lazyImageRotationAnimation_)) then begin
        end else begin
            TJava.MonitorEnter(Self.lock);
            try
                Self.loadNowList.add(TJava.Box(lazyImageRotationAnimation_));
                Self.loadAfterList.remove(lazyImageRotationAnimation_);
            finally
                TJava.MonitorExit(Self.lock);
            end;
        end;
        Self.runTask();
end;
    

procedure TImageCache.progressEnded;
begin
        Self.progressEnded_ := True;
end;
    

// throws Exception
procedure TImageCache.runTask;
begin
        Self.processor.process();
end;
    

procedure TImageCache.initProgress;
begin
        if Self.firstTime then begin
            Self.firstTime := False;
        end;
end;
    

function TImageCache.isLazy: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TImageCache.NULL_IMAGE_CACHE := TImageCache.Create();
  {AB:END}

end.

