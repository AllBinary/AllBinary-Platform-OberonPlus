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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, TsUtil, CommonStrings, ABSystemWrapper, ImageCacheBase;

type
  {AB:TYPES}
  TImageCache = class(TImageCacheBase)
  public
    commonStrings: TCommonStrings;
    systemWrapper: TABSystemWrapper;
    tsUtil: TTsUtil;
    class var NULL_IMAGE_CACHE: TImageCache;
    procedure InitFields;
        constructor Create;
        procedure addListener(renderer: TObject); virtual;
        function getIndex(key: TObject): Integer; virtual;
        function get(caller: string; width: Integer; height: Integer): TImage; override;
        function getWithKey(key: TObject): TImage; override;
        procedure runTask; virtual;
        function isLazy: Boolean; virtual;
  end;

implementation
uses
  NullImage, StringMaker, ResourceUtil, GDResources, StringUtil, Memory;


{AB:CODE}

procedure TImageCache.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.systemWrapper := TABSystemWrapper.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
end;
    

constructor TImageCache.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TImageCache.addListener(renderer: TObject);
begin
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
            if TJava.Equals(resourceStringArray[index], key) then begin
                Exit(index);
            end;
        end;
        Self.logUtil.putF(TStringMaker.Create().append('unable to find key: ').append(TStringUtil.getInstance().toString(key)).toString(), TJava.Box(Self), Self.commonStrings.RUN);
        raise SysUtils.Exception.Create('');
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
            if (foundIndex) = (-1) then begin
                foundIndex := Self.nextIndex;
                Self.widths[Self.nextIndex] := width;
                Self.heights[Self.nextIndex] := height;
                Inc(Self.nextIndex);
            end;
            Self.listOfList[foundIndex].add(image_);
        end;
        Exit(image_);
end;
    

// throws Exception
function TImageCache.getWithKey(key: TObject): TImage;
var
  resourceUtil_: TResourceUtil;
  resourceId: Integer;
  image_: TImage;
  inputStream_: TInputStream;
begin
        resourceUtil_ := TResourceUtil.getInstance();
        resourceId := resourceUtil_.getResourceId(TJava.UnboxString(TJava.ToObject(key)));
        image_ := Self.getImage(resourceId);
        if (image_) = (TNullImage.NULL_IMAGE) then begin
            inputStream_ := resourceUtil_.getResourceAsStream(TJava.UnboxString(TJava.ToObject(key)));
            try
                Self.logUtil.putF(TMemory.getInfo(), TJava.Box(Self), Self.commonStrings.GET);
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
            inputStream_.close();
            Self.hashtable.put(TJava.Box(resourceId), TJava.Box(image_));
        end;
        Exit(image_);
end;
    

procedure TImageCache.runTask;
begin
end;
    

function TImageCache.isLazy: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TImageCache.NULL_IMAGE_CACHE := TImageCache.Create();
  {AB:END}

end.

