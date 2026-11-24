// Generated Code Do Not Modify
// package org.allbinary.time
unit TimeTypeTest;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTestableTimeTypeUtil = class(TTimeTypeUtil)
  public
    hour: Integer;
    procedure InitFields;
        constructor Create(hour: Integer);
        function getHourOfDay: Integer; override;
  end;
  TTimeTypeTest = class(TObject)
  public
    constructor Create;
        class function millisForHourLocal(hour: Integer): Int64; static;
        procedure isNight_returnsTrue_for_hours_less_than_6; virtual;
        procedure isNight_returnsTrue_for_hours_greater_than_18; virtual;
        procedure isNight_returnsFalse_for_boundary_hours_6_and_18; virtual;
        procedure getNightOrDay_returns_expected_label; virtual;
        procedure getHourOfDay_long_converts_epoch_to_local_hour; virtual;
        procedure isNight_long_expected_ranges; virtual;
        procedure getNightOrDay_long_consistency; virtual;
        procedure boundaries_day_for_long_based_api; virtual;
        procedure constants_accessible_and_stable; virtual;
        procedure getInstance_returns_same_singleton; virtual;
  end;

implementation
uses
  Assertions, DisplayName, Test;


{AB:CODE}

procedure TTestableTimeTypeUtil.InitFields;
begin
  
end;
    

    constructor TTestableTimeTypeUtil.Create(hour: Integer);
begin
        inherited Create;
        InitFields;
            Self.hour := hour;
end;
    

    function TTestableTimeTypeUtil.getHourOfDay: Integer;
begin
            Exit(Self.hour);
end;

constructor TTimeTypeTest.Create;
begin
  inherited Create;
end;
    

class function TTimeTypeTest.millisForHourLocal(hour: Integer): Int64;
var
  cal: TCalendar;
begin
        cal := TCalendar.getInstance();
        cal.set_(TCalendar.HOUR_OF_DAY, hour);
        cal.set_(TCalendar.MINUTE, 0);
        cal.set_(TCalendar.SECOND, 0);
        cal.set_(TCalendar.MILLISECOND, 0);
        Exit(cal.getTimeInMillis());
end;
    

procedure TTimeTypeTest.isNight_returnsTrue_for_hours_less_than_6;
var
  util: TTimeTypeUtil;
  h: Integer;
begin
        { Otherwise - statement - ForEachStmt }
end;
    

procedure TTimeTypeTest.isNight_returnsTrue_for_hours_greater_than_18;
var
  util: TTimeTypeUtil;
  h: Integer;
begin
        { Otherwise - statement - ForEachStmt }
end;
    

procedure TTimeTypeTest.isNight_returnsFalse_for_boundary_hours_6_and_18;
var
  util: TTimeTypeUtil;
  h: Integer;
begin
        { Otherwise - statement - ForEachStmt }
end;
    

procedure TTimeTypeTest.getNightOrDay_returns_expected_label;
var
  nightUtil: TTimeTypeUtil;
  dayUtil: TTimeTypeUtil;
begin
        nightUtil := TTestableTimeTypeUtil.Create(0);
        TAssertions.assertEquals(nightUtil.NIGHT, nightUtil.getNightOrDay());
        dayUtil := TTestableTimeTypeUtil.Create(12);
        TAssertions.assertEquals(dayUtil.DAY, dayUtil.getNightOrDay());
end;
    

procedure TTimeTypeTest.getHourOfDay_long_converts_epoch_to_local_hour;
var
  util: TTimeTypeUtil;
  millis: Int64;
  h: Integer;
begin
        util := TTimeTypeUtil.Create();
        { Otherwise - statement - ForEachStmt }
end;
    

procedure TTimeTypeTest.isNight_long_expected_ranges;
var
  util: TTimeTypeUtil;
  millis: Int64;
  h: Integer;
begin
        util := TTimeTypeUtil.Create();
        { Otherwise - statement - ForEachStmt }
        { Otherwise - statement - ForEachStmt }
end;
    

procedure TTimeTypeTest.getNightOrDay_long_consistency;
var
  util: TTimeTypeUtil;
  nightMillis: Int64;
  dayMillis: Int64;
begin
        util := TTimeTypeUtil.Create();
        nightMillis := TTimeTypeTest.millisForHourLocal(0);
        dayMillis := TTimeTypeTest.millisForHourLocal(12);
        TAssertions.assertEquals(util.NIGHT, util.getNightOrDay(nightMillis));
        TAssertions.assertEquals(util.DAY, util.getNightOrDay(dayMillis));
end;
    

procedure TTimeTypeTest.boundaries_day_for_long_based_api;
var
  util: TTimeTypeUtil;
  millis: Int64;
  h: Integer;
begin
        util := TTimeTypeUtil.Create();
        { Otherwise - statement - ForEachStmt }
end;
    

procedure TTimeTypeTest.constants_accessible_and_stable;
var
  util: TTimeTypeUtil;
begin
        util := TTimeTypeUtil.Create();
        TAssertions.assertEquals('Night', util.NIGHT);
        TAssertions.assertEquals('Day', util.DAY);
end;
    

procedure TTimeTypeTest.getInstance_returns_same_singleton;
var
  a: TTimeTypeUtil;
  b: TTimeTypeUtil;
begin
        a := TTimeTypeUtil.getInstance();
        b := TTimeTypeUtil.getInstance();
        TAssertions.assertSame(a, b);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

