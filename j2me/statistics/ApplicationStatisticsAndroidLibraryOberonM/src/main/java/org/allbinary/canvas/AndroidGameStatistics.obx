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
// package org.allbinary.canvas
unit AndroidGameStatistics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, View, BaseViewWrapper, BaseGameStatistics;

type
  {AB:TYPES}
  TAndroidGameStatistics = class(TBaseGameStatistics)
  public
    view: TBaseViewWrapper;
    totalOnDraws: Int64;
    ANDROID_STRING_ARRAY: TArray<string>;
    TOTAL_ONDRAWS: string;
    ONDRAWS_RATE: string;
    procedure InitFields;
        constructor Create;
        procedure initView(view_: TView); virtual;
        procedure process; override;
        procedure nextOnDraw; virtual;
        function toStringArray: TArray<string>; override;
        function toString: string; override;
  end;

implementation
uses
  ViewWrapper, StringMaker, StringUtil;


{AB:CODE}

procedure TAndroidGameStatistics.InitFields;
begin
  Self.view := TBaseViewWrapper.NULL_VIEW_WRAPPER;
  
  Self.ANDROID_STRING_ARRAY := TJava.NewArray<string>(14);
  Self.TOTAL_ONDRAWS := ' Total onDraws: ';
  Self.ONDRAWS_RATE := ' onDraws(/10) Sec: ';
end;
    

constructor TAndroidGameStatistics.Create;
var
  stringUtil_: TStringUtil;
  index: Integer;
begin
    inherited Create;
    InitFields;
        stringUtil_ := TStringUtil.getInstance();
        for index := 0 to System.Length(Self.ANDROID_STRING_ARRAY) - 1 do begin
            Self.ANDROID_STRING_ARRAY[index] := stringUtil_.EMPTY_STRING;
        end;
end;
    

procedure TAndroidGameStatistics.initView(view_: TView);
begin
        inherited init();
        Self.view := TViewWrapper.Create(view_);
        Self.totalOnDraws := 0;
end;
    

procedure TAndroidGameStatistics.process;
begin
        Self.view.postInvalidate();
end;
    

procedure TAndroidGameStatistics.nextOnDraw;
begin
        Inc(Self.totalOnDraws);
end;
    

function TAndroidGameStatistics.toStringArray: TArray<string>;
var
  stringArray: TArray<string>;
  index: Integer;
  totalTime: Int64;
begin
        stringArray := inherited toStringArray();
        for index := 0 to System.Length(stringArray) - 1 do begin
            Self.ANDROID_STRING_ARRAY[index] := stringArray[index];
        end;
        totalTime := Self.getTimeDelayHelper().getElapsed(Self.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) div (10000));
        Self.ANDROID_STRING_ARRAY[10] := Self.TOTAL_ONDRAWS;
        Self.ANDROID_STRING_ARRAY[11] := IntToStr(Self.totalOnDraws);
        Self.ANDROID_STRING_ARRAY[12] := Self.ONDRAWS_RATE;
        Self.ANDROID_STRING_ARRAY[13] := IntToStr((Self.totalOnDraws) div (totalTime));
        Exit(Self.ANDROID_STRING_ARRAY);
end;
    

function TAndroidGameStatistics.toString: string;
var
  totalTime: Int64;
  stringBuffer: TStringMaker;
  drawsOverTime: string;
begin
        totalTime := Self.getTimeDelayHelper().getElapsed(Self.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) div (1000));
        if (totalTime) > (0) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(inherited toStringAt(totalTime));
            if (Self.totalOnDraws) > (0) then begin
                stringBuffer.append(Self.TOTAL_ONDRAWS);
                stringBuffer.append(IntToStr(Self.totalOnDraws));
                stringBuffer.append(Self.ONDRAWS_RATE);
                drawsOverTime := IntToStr((Self.totalOnDraws) div (totalTime));
                stringBuffer.append(drawsOverTime);
            end;
            Exit(stringBuffer.toString());
        end else begin
            Exit(Self.NOT_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

