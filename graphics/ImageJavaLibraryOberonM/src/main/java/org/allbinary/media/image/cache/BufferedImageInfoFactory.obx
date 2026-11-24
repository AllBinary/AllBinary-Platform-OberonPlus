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
// package org.allbinary.media.image.cache
unit BufferedImageInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BufferedImageInfo;

type
  {AB:TYPES}
  TBufferedImageInfoFactory = class(TObject)
  public
    class var hashMap: TJavaHashMap<TObject, TObject>;
        constructor Create;
        class function getInstance(width: Integer; height: Integer; type_: Integer): TBufferedImageInfo; static;
  end;

implementation
uses
  StdUtil, StringMaker;


{AB:CODE}
    

constructor TBufferedImageInfoFactory.Create;
begin
    inherited Create;
end;
    

class function TBufferedImageInfoFactory.getInstance(width: Integer; height: Integer; type_: Integer): TBufferedImageInfo;
var
  stringbuffer: TStringMaker;
  key: string;
  bufferedImageInfo_: TBufferedImageInfo;
begin
        stringbuffer := TStringMaker.Create();
        stringbuffer.appendint(width);
        stringbuffer.appendint(height);
        stringbuffer.appendint(type_);
        key := stringbuffer.toString();
        bufferedImageInfo_ := TBufferedImageInfo(TJava.ToObject(TBufferedImageInfoFactory.hashMap.get(TJava.Box(key))));
        if (bufferedImageInfo_) = (nil) then begin
            bufferedImageInfo_ := TBufferedImageInfo.Create(width, height, type_);
            TBufferedImageInfoFactory.hashMap.put(TJava.Box(key), TJava.Box(bufferedImageInfo_));
        end;
        Exit(bufferedImageInfo_);
end;

initialization
  {AB:INITIALIZATION}
  TBufferedImageInfoFactory.hashMap := TStdUtil.getInstance().createHashMap();
  {AB:END}

end.

