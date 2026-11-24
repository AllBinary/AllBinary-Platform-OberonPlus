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
// package org.allbinary.media.image.comparison
unit ImageComparisonResultFrameCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface, ImageComparisonResult;

type
  {AB:TYPES}
  TImageComparisonResultFrameCacheable = class(TInterfacedObject, ICacheableInterface)
  public
    frame: Int64;
    imageComparisonResult: TImageComparisonResult;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageComparisonResult_: TImageComparisonResult; frame: Int64);
        function getKey: TObject; virtual;
        function getFrame: Int64; virtual;
        procedure setFrame(frame: Int64); virtual;
        function getImageComparisonResult: TImageComparisonResult; virtual;
        procedure setImageComparisonResult(imageComparisonResult_: TImageComparisonResult); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TImageComparisonResultFrameCacheable.InitFields;
begin
  
  
end;

function TImageComparisonResultFrameCacheable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageComparisonResultFrameCacheable.Create(imageComparisonResult_: TImageComparisonResult; frame: Int64);
begin
    inherited Create;
    InitFields;
        Self.setImageComparisonResult(imageComparisonResult_);
        Self.frame := frame;
end;
    

function TImageComparisonResultFrameCacheable.getKey: TObject;
begin
        Exit(TJava.Box(Self.frame));
end;
    

function TImageComparisonResultFrameCacheable.getFrame: Int64;
begin
        Exit(Self.frame);
end;
    

procedure TImageComparisonResultFrameCacheable.setFrame(frame: Int64);
begin
        Self.frame := frame;
end;
    

function TImageComparisonResultFrameCacheable.getImageComparisonResult: TImageComparisonResult;
begin
        Exit(Self.imageComparisonResult);
end;
    

procedure TImageComparisonResultFrameCacheable.setImageComparisonResult(imageComparisonResult_: TImageComparisonResult);
begin
        Self.imageComparisonResult := imageComparisonResult_;
end;
    

function TImageComparisonResultFrameCacheable.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ClassType.ClassName);
        stringBuffer.append(' Frame: ');
        stringBuffer.appendlong(Self.getFrame());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

