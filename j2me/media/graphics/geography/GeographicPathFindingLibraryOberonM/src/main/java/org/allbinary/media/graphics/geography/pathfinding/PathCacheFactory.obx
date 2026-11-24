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
// package org.allbinary.media.graphics.geography.pathfinding
unit PathCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList, BasicArrayListUtil;

type
  {AB:TYPES}
  TPathCacheFactory = class(TObject)
  public
    basicArrayListUtil: TBasicArrayListUtil;
    hashtable: TABHashtable<TObject, TObject>;
    class var pathFactory: TPathCacheFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TPathCacheFactory; static;
        function getSize: Integer; virtual;
        procedure add(pathId: Integer; list: TBasicArrayList); virtual;
        procedure remove(pathId: Integer); virtual;
        procedure removeAll; virtual;
        function getOrCreate(pathIdInteger: Integer): TBasicArrayList; virtual;
  end;

implementation
uses
  StdUtil;


{AB:CODE}

procedure TPathCacheFactory.InitFields;
begin
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
end;
    

constructor TPathCacheFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TPathCacheFactory.getInstance: TPathCacheFactory;
begin
        Exit(TPathCacheFactory.pathFactory);
end;
    

function TPathCacheFactory.getSize: Integer;
begin
        Exit(Self.hashtable.size());
end;
    

procedure TPathCacheFactory.add(pathId: Integer; list: TBasicArrayList);
begin
        Self.hashtable.put(TJava.Box(pathId), TJava.Box(list));
end;
    

procedure TPathCacheFactory.remove(pathId: Integer);
begin
        Self.hashtable.remove(TJava.Box(pathId));
end;
    

// throws Exception
procedure TPathCacheFactory.removeAll;
begin
        Self.hashtable.clear();
        if (Self.hashtable.size()) > (0) then begin
            raise SysUtils.Exception.Create('Did not clear');
        end;
end;
    

// throws Exception
function TPathCacheFactory.getOrCreate(pathIdInteger: Integer): TBasicArrayList;
var
  listCanBeNull: TObject;
begin
        listCanBeNull := TJava.Box(Self.hashtable.get(TJava.Box(pathIdInteger)));
        if (listCanBeNull) = (nil) then begin
            listCanBeNull := TJava.Box(Self.basicArrayListUtil.getImmutableInstance());
        end;
        Exit(TBasicArrayList(TJava.ToObject(listCanBeNull)));
end;

initialization
  {AB:INITIALIZATION}
  TPathCacheFactory.pathFactory := TPathCacheFactory.Create();
  {AB:END}

end.

