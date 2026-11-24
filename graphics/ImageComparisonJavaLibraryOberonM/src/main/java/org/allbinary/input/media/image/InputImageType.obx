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
// package org.allbinary.input.media.image
unit InputImageType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TInputImageType = class(TObject)
  public
    name: string;
    index: Integer;
    class var hashMap: TJavaHashMap<TObject, TObject>;
    class var TYPE_VECTOR: TBasicArrayList;
    class var CAPTURE: TInputImageType;
    class var COMPARISON: TInputImageType;
    class var MOTION: TInputImageType;
    procedure InitFields;
        constructor Create(name: string; index: Integer);
        function toString: string; virtual;
        function getName: string; virtual;
        class function getInstance(imageTypeString: string): TInputImageType; static;
        class function getAllAsVector: TBasicArrayList; static;
        function getIndex: Integer; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil;


{AB:CODE}

procedure TInputImageType.InitFields;
begin
  
  
end;
    

constructor TInputImageType.Create(name: string; index: Integer);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.index := index;
        TInputImageType.TYPE_VECTOR.add(TJava.Box(Self));
        TInputImageType.hashMap.put(TJava.Box(Self.getName()), TJava.Box(Self));
end;
    

function TInputImageType.toString: string;
begin
        Exit('ImageType: ' + Self.getName());
end;
    

function TInputImageType.getName: string;
begin
        Exit(Self.name);
end;
    

class function TInputImageType.getInstance(imageTypeString: string): TInputImageType;
begin
        Exit(TInputImageType(TJava.ToObject(TInputImageType.hashMap.get(TJava.Box(imageTypeString)))));
end;
    

class function TInputImageType.getAllAsVector: TBasicArrayList;
begin
        Exit(TInputImageType.TYPE_VECTOR);
end;
    

function TInputImageType.getIndex: Integer;
begin
        Exit(Self.index);
end;

initialization
  {AB:INITIALIZATION}
  TInputImageType.hashMap := TStdUtil.getInstance().createHashMap();
  TInputImageType.TYPE_VECTOR := TBasicArrayListD.Create();
  TInputImageType.CAPTURE := TInputImageType.Create('Capture', 0);
  TInputImageType.COMPARISON := TInputImageType.Create('Comparison', 1);
  TInputImageType.MOTION := TInputImageType.Create('Motion', 2);
  {AB:END}

end.

