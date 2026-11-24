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
// package views.generic.inventory
unit InventoryColumnUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicItemData, InventoryEntity, LogUtil;

type
  {AB:TYPES}
  TInventoryColumnUtil = class(TObject)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    class var instance: TInventoryColumnUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInventoryColumnUtil; static;
        function getColumnWhereLike(inventoryEntity_: TInventoryEntity; category: string; column: string): TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TInventoryColumnUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
end;

constructor TInventoryColumnUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInventoryColumnUtil.getInstance: TInventoryColumnUtil;
begin
        Exit(TInventoryColumnUtil.instance);
end;
    

function TInventoryColumnUtil.getColumnWhereLike(inventoryEntity_: TInventoryEntity; category: string; column: string): TBasicArrayList;
var
  keywords: TBasicArrayList;
  vectorOfHashMaps: TBasicArrayList;
  size: Integer;
  hashMap_: TJavaHashMap<TObject, TObject>;
  categoryName: string;
  index: Integer;
begin
        Self.logUtil.putF('Start Category: ' + category, TJava.Box(Self), 'getKeywords');
        keywords := TBasicArrayListD.Create();
        vectorOfHashMaps := inventoryEntity_.getAllRows();
        size := vectorOfHashMaps.size();
        for index := 0 to size - 1 do begin
            hashMap_ := TJavaHashMap<TObject, TObject>(TJava.ToObject(vectorOfHashMaps.get(index)));
            categoryName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.basicItemData.CATEGORY))));
            if (not ((categoryName = ''))) and (categoryName.StartsWith(category)) then begin
                keywords.add(TJava.Box(hashMap_.get(TJava.Box(column))));
            end;
        end;
        Exit(keywords);
end;

initialization
  {AB:INITIALIZATION}
  TInventoryColumnUtil.instance := TInventoryColumnUtil.Create();
  {AB:END}

end.

