// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.pathfinding
unit BasicGeographicMapExtractedPathsCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BaseBasicArrayListCache;

type
  {AB:TYPES}
  TBasicGeographicMapExtractedPathsCacheFactory = class(TBaseBasicArrayListCache)
  public
    maxConcurrentPaths: Integer;
    maxPaths: Integer;
    class var instance: TBasicGeographicMapExtractedPathsCacheFactory;
    procedure InitFields;
        class function getInstance: TBasicGeographicMapExtractedPathsCacheFactory; static;
        constructor Create;
        procedure init(maxConcurrentPaths: Integer; maxPaths: Integer); virtual;
        function getPaths: TBasicArrayList; virtual;
        procedure release(list: TBasicArrayList); virtual;
  end;

implementation
uses
  BasicGeographicMapExtractedPathCacheFactory, BasicArrayListS;


{AB:CODE}

procedure TBasicGeographicMapExtractedPathsCacheFactory.InitFields;
begin
  
  
end;
    

class function TBasicGeographicMapExtractedPathsCacheFactory.getInstance: TBasicGeographicMapExtractedPathsCacheFactory;
begin
        Exit(TBasicGeographicMapExtractedPathsCacheFactory.instance);
end;
    

constructor TBasicGeographicMapExtractedPathsCacheFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicGeographicMapExtractedPathsCacheFactory.init(maxConcurrentPaths: Integer; maxPaths: Integer);
var
  index: Integer;
begin
        if (maxConcurrentPaths) <> (Self.maxConcurrentPaths) then begin
            for index := maxConcurrentPaths downto Self.maxConcurrentPaths do begin
                Self.list.add(TBasicArrayListS.Create(maxPaths));
            end;
            Self.maxConcurrentPaths := maxConcurrentPaths;
        end;
        Self.maxPaths := maxPaths;
end;
    

function TBasicGeographicMapExtractedPathsCacheFactory.getPaths: TBasicArrayList;
begin
        if (Self.list.size()) > (0) then begin
            Exit(TBasicArrayList(TJava.ToObject(Self.list.removeAt(0))));
        end else begin
            Exit(TBasicArrayListS.Create(Self.maxPaths));
        end;
end;
    

procedure TBasicGeographicMapExtractedPathsCacheFactory.release(list: TBasicArrayList);
var
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            TBasicGeographicMapExtractedPathCacheFactory.getInstance().release(TBasicArrayList(TJava.ToObject(list.get(index))));
        end;
        list.clear();
        Self.list.add(TJava.Box(list));
end;

initialization
  {AB:INITIALIZATION}
  TBasicGeographicMapExtractedPathsCacheFactory.instance := TBasicGeographicMapExtractedPathsCacheFactory.Create();
  {AB:END}

end.

