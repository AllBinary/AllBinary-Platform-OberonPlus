// Generated Code Do Not Modify
// package org.allbinary.time
unit TimeTypeUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTimeTypeUtil = class(TObject)
  public
    NIGHT: string;
    DAY: string;
    class var instance: TTimeTypeUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTimeTypeUtil; static;
        function isNight: Boolean; overload; virtual;
        function getHourOfDay: Integer; overload; virtual;
        function getNightOrDay: string; overload; virtual;
        function getHourOfDay(timeInMillis: Int64): Integer; overload; virtual;
        function isNight(timeInMillis: Int64): Boolean; overload; virtual;
        function getNightOrDay(timeInMillis: Int64): string; overload; virtual;
  end;

implementation

{AB:CODE}

procedure TTimeTypeUtil.InitFields;
begin
  Self.NIGHT := 'Night';
  Self.DAY := 'Day';
end;

constructor TTimeTypeUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTimeTypeUtil.getInstance: TTimeTypeUtil;
begin
        Exit(TTimeTypeUtil.instance);
end;
    

function TTimeTypeUtil.isNight: Boolean;
var
  hoursOfDay: Integer;
begin
        hoursOfDay := Self.getHourOfDay();
        Exit(((hoursOfDay) < (6)) or ((hoursOfDay) > (18)));
end;
    

function TTimeTypeUtil.getHourOfDay: Integer;
var
  calendar: TCalendar;
begin
        calendar := TCalendar.getInstance();
        Exit(calendar.get(TCalendar.HOUR_OF_DAY));
end;
    

function TTimeTypeUtil.getNightOrDay: string;
begin
        Exit(TJava.IfThen<Variant>(Self.isNight(), Self.NIGHT, Self.DAY));
end;
    

function TTimeTypeUtil.getHourOfDay(timeInMillis: Int64): Integer;
var
  calendar: TCalendar;
begin
        calendar := TCalendar.getInstance();
        calendar.setTimeInMillis(timeInMillis);
        Exit(calendar.get(TCalendar.HOUR_OF_DAY));
end;
    

function TTimeTypeUtil.isNight(timeInMillis: Int64): Boolean;
var
  hoursOfDay: Integer;
begin
        hoursOfDay := Self.getHourOfDay(timeInMillis);
        Exit(((hoursOfDay) < (6)) or ((hoursOfDay) > (18)));
end;
    

function TTimeTypeUtil.getNightOrDay(timeInMillis: Int64): string;
begin
        Exit(TJava.IfThen<Variant>(Self.isNight(timeInMillis), Self.NIGHT, Self.DAY));
end;

initialization
  {AB:INITIALIZATION}
  TTimeTypeUtil.instance := TTimeTypeUtil.Create();
  {AB:END}

end.

