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
// package org.allbinary.logic.visual.media
unit MediaData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMediaData = class(TObject)
  public
    name: string;
    type_: string;
    extension: string;
    class var hashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create(a_Name: string);
        function getName: string; virtual;
        function getType: string; virtual;
        function getExtension: string; virtual;
        function isConvertableTo(mediaData_: TMediaData): Boolean; virtual;
        function toString: string; virtual;
        class function get(a_Name: string): TMediaData; static;
        class function getDefault: TMediaData; static;
        class function toHashMap: TJavaHashMap<TObject, TObject>; static;
  end;

implementation
uses
  MediaTypeData, MediaDataFactory, StdUtil;


{AB:CODE}

procedure TMediaData.InitFields;
begin
  
  
  
end;
    

constructor TMediaData.Create(a_Name: string);
begin
    inherited Create;
    InitFields;
        Self.name := a_Name;
        Self.extension := '.' + Self.name;
        Self.type_ := TMediaTypeData.getInstance().NOT_RESIZABLE_MEDIA;
        TMediaData.hashMap.put(TJava.Box(a_Name), TJava.Box(Self));
end;
    

function TMediaData.getName: string;
begin
        Exit(Self.name);
end;
    

function TMediaData.getType: string;
begin
        Exit(Self.type_);
end;
    

function TMediaData.getExtension: string;
begin
        Exit(Self.extension);
end;
    

function TMediaData.isConvertableTo(mediaData_: TMediaData): Boolean;
begin
        if ((Self) = (TMediaDataFactory.getInstance().GIF)) and ((mediaData_) = (TMediaDataFactory.getInstance().JPG)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TMediaData.toString: string;
begin
        Exit(Self.getName());
end;
    

// throws Exception
class function TMediaData.get(a_Name: string): TMediaData;
var
  mediaData_: TMediaData;
begin
        mediaData_ := TMediaData(TJava.ToObject(TMediaData.hashMap.get(TJava.Box(a_Name))));
        if (mediaData_) <> (nil) then begin
            Exit(mediaData_);
        end else begin
            raise SysUtils.Exception.Create('No Such MediaData');
        end;
end;
    

class function TMediaData.getDefault: TMediaData;
begin
        Exit(TMediaDataFactory.getInstance().JPG);
end;
    

class function TMediaData.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(TMediaData.hashMap);
end;

initialization
  {AB:INITIALIZATION}
  TMediaData.hashMap := TStdUtil.getInstance().createHashMap();
  {AB:END}

end.

