// Generated Code Do Not Modify
// package org.allbinary.android
unit ViewSwapper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, View;

type
  {AB:TYPES}
  TViewSwapper = class(TObject)
  public
    rootViewId: Integer;
    activity: TActivity;
    currentMainViewId: Integer;
    mainViewArray: TArray<TView>;
    topViewArray: TArray<TView>;
    class var NULL_VIEW_ARRAY: TArray<TView>;
    procedure InitFields;
        constructor Create(activity_: TActivity; rootViewId: Integer);
        procedure setMainViews(viewArray: TArray<TView>); virtual;
        procedure setTopViewArray(topViewArray: TArray<TView>); virtual;
        procedure setMainView(id: Integer); virtual;
  end;

implementation
uses
  ViewGroup;


{AB:CODE}

procedure TViewSwapper.InitFields;
begin
  
  
  Self.currentMainViewId := -1;
  Self.mainViewArray := TViewSwapper.NULL_VIEW_ARRAY;
  Self.topViewArray := TViewSwapper.NULL_VIEW_ARRAY;
end;
    

constructor TViewSwapper.Create(activity_: TActivity; rootViewId: Integer);
begin
    inherited Create;
    InitFields;
        Self.activity := activity_;
        Self.rootViewId := rootViewId;
end;
    

procedure TViewSwapper.setMainViews(viewArray: TArray<TView>);
begin
        Self.mainViewArray := viewArray;
end;
    

procedure TViewSwapper.setTopViewArray(topViewArray: TArray<TView>);
begin
        Self.topViewArray := topViewArray;
end;
    

procedure TViewSwapper.setMainView(id: Integer);
var
  viewGroup_: TViewGroup;
  index: Integer;
begin
        viewGroup_ := TViewGroup(TJava.ToObject(Self.activity.findViewById(Self.rootViewId)));
        if (id) <> (Self.currentMainViewId) then begin
            for index := 0 to System.Length(Self.topViewArray) - 1 do begin
                viewGroup_.removeView(Self.topViewArray[index]);
            end;
            for index := 0 to System.Length(Self.mainViewArray) - 1 do begin
                if (id) <> (Self.mainViewArray[index].getId()) then begin
                    viewGroup_.removeView(Self.mainViewArray[index]);
                end;
            end;
            for index := 0 to System.Length(Self.mainViewArray) - 1 do begin
                if (id) = (Self.mainViewArray[index].getId()) then begin
                    viewGroup_.addView(Self.mainViewArray[index]);
                    Self.currentMainViewId := id;
                end;
            end;
            for index := 0 to System.Length(Self.topViewArray) - 1 do begin
                viewGroup_.addView(Self.topViewArray[index]);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TViewSwapper.NULL_VIEW_ARRAY := nil;
  {AB:END}

end.

