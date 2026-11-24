// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.pathfinding
unit BasicGeographicMapExtractedPathCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseBasicArrayListCache, BasicArrayList;

type
  {AB:TYPES}
  TBasicGeographicMapExtractedPathCacheFactory = class(TBaseBasicArrayListCache)
  public
    maxConcurrentPaths: Integer;
    maxPaths: Integer;
    class var instance: TBasicGeographicMapExtractedPathCacheFactory;
    procedure InitFields;
        class function getInstance: TBasicGeographicMapExtractedPathCacheFactory; static;
        constructor Create;
        procedure init(maxConcurrentPaths: Integer; maxPaths: Integer); virtual;
        function getPath: TBasicArrayList; virtual;
        procedure release(list: TBasicArrayList); virtual;
  end;

implementation
uses
  BasicArrayListS;


{AB:CODE}

procedure TBasicGeographicMapExtractedPathCacheFactory.InitFields;
begin
  
  
end;
    

class function TBasicGeographicMapExtractedPathCacheFactory.getInstance: TBasicGeographicMapExtractedPathCacheFactory;
begin
        Exit(TBasicGeographicMapExtractedPathCacheFactory.instance);
end;
    

constructor TBasicGeographicMapExtractedPathCacheFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicGeographicMapExtractedPathCacheFactory.init(maxConcurrentPaths: Integer; maxPaths: Integer);
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
    

function TBasicGeographicMapExtractedPathCacheFactory.getPath: TBasicArrayList;
begin
        if (Self.list.size()) > (0) then begin
            Exit(TBasicArrayList(TJava.ToObject(Self.list.removeAt(0))));
        end else begin
            Exit(TBasicArrayListS.Create(Self.maxPaths));
        end;
end;
    

procedure TBasicGeographicMapExtractedPathCacheFactory.release(list: TBasicArrayList);
begin
        list.clear();
        Self.list.add(TJava.Box(list));
end;

initialization
  {AB:INITIALIZATION}
  TBasicGeographicMapExtractedPathCacheFactory.instance := TBasicGeographicMapExtractedPathCacheFactory.Create();
  {AB:END}

end.

