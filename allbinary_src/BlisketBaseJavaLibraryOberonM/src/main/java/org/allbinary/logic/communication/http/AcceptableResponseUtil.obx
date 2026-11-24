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
// package org.allbinary.logic.communication.http
unit AcceptableResponseUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TAcceptableResponseUtil = class(TObject)
  public
    candidateVector: TBasicArrayList;
    tagNameVector: TBasicArrayList;
    class var instance: TAcceptableResponseUtil;
    procedure InitFields;
    constructor Create;
    class procedure StaticInitializer; static;
        class function getInstance: TAcceptableResponseUtil; static;
        function get(index: Integer): string; virtual;
        function getTagName(index: Integer): string; virtual;
        function size: Integer; virtual;
  end;

implementation
uses
  AcceptableResponseFactory, BasicArrayListD, TsUtil, StdUtil;


{AB:CODE}

procedure TAcceptableResponseUtil.InitFields;
begin
  Self.candidateVector := TBasicArrayListD.Create();
  Self.tagNameVector := TBasicArrayListD.Create();
end;

constructor TAcceptableResponseUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAcceptableResponseUtil.getInstance: TAcceptableResponseUtil;
begin
        Exit(TAcceptableResponseUtil.instance);
end;
    

class procedure TAcceptableResponseUtil.StaticInitializer;
begin
        TTsUtil.getInstance().hashCode(TJava.Box(TAcceptableResponseFactory.getInstance().HTML));
end;
    

function TAcceptableResponseUtil.get(index: Integer): string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.candidateVector.get(index))));
end;
    

function TAcceptableResponseUtil.getTagName(index: Integer): string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.tagNameVector.get(index))));
end;
    

function TAcceptableResponseUtil.size: Integer;
begin
        Exit(Self.candidateVector.size());
end;

initialization
  {AB:INITIALIZATION}
  TAcceptableResponseUtil.instance := TAcceptableResponseUtil.Create();
  TAcceptableResponseUtil.StaticInitializer;
  {AB:END}

end.

