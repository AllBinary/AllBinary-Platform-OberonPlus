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
// package org.allbinary.logic.string.regex.replace
unit Replace;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, J2SEUtil, LogUtil;

type
  {AB:TYPES}
  TReplace = class(TObject)
  public
    logUtil: TLogUtil;
    j2seUtil: TJ2SEUtil;
    REPLACERS_: string;
    ALL_: string;
    FOUND_KEY: string;
    hashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create(key: string; value: string); overload;
        constructor Create(keys: TArray<string>; values: TArray<string>); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function all(replace_: string): string; virtual;
        function upTo(replace_: string; total: Integer): string; virtual;
        function line(replace_: string): string; virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  AppUrlGlobals, URLGLOBALS, StdUtil, StringMaker, StringUtil, LogConfigTypes;


{AB:CODE}

procedure TReplace.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.j2seUtil := TJ2SEUtil.getInstance();
  Self.REPLACERS_ := 'Replacers: ';
  Self.ALL_ := 'all';
  Self.FOUND_KEY := 'found key total: ';
  
end;
    

constructor TReplace.Create(key: string; value: string);
begin
    inherited Create;
    InitFields;
        Self.hashMap := TStdUtil.getInstance().createHashMap();
        Self.hashMap.put(TJava.Box(TArray<string>.Create(key)), TJava.Box(TArray<string>.Create(value)));
end;
    

constructor TReplace.Create(keys: TArray<string>; values: TArray<string>);
begin
    inherited Create;
    InitFields;
        Self.hashMap := TStdUtil.getInstance().createHashMap();
        Self.hashMap.put(TJava.Box(keys), TJava.Box(values));
end;
    

constructor TReplace.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.hashMap := hashMap_;
end;
    

function TReplace.all(replace_: string): string;
begin
        Exit(Self.upTo(replace_, Low(Integer)));
end;
    

function TReplace.upTo(replace_: string; total: Integer): string;
var
  newStringBuffer: TStringMaker;
  totalNumberOfReplaces: Integer;
  keys: TArray<string>;
  values: TArray<string>;
  keyArray: TArray<TObject>;
  size: Integer;
  foundTotal: Int64;
  index: Integer;
  nextKey: string;
  end_: Integer;
  nextSecondKey: string;
  begin2: Integer;
  begin_: Integer;
  end2: Integer;
  index2: Integer;
begin
        newStringBuffer := TStringMaker.Create();
        totalNumberOfReplaces := 0;
        
        
        keyArray := Self.j2seUtil.getHashMapAsArray(Self.hashMap);
        size := System.Length(keyArray);
        for index2 := 0 to size - 1 do begin
            keys := TJava.UnboxArray<string>(TJava.ToObject(keyArray[index2]));
            values := TJava.UnboxArray<string>(TJava.ToObject(Self.hashMap.get(TJava.Box(keys))));
            foundTotal := 0;
            index := 0;
            
            
            
            
            while (index) < (System.Length(replace_)) do begin
                begin_ := replace_.indexOf(keys[0], index);
                if (begin_) <> (-1) then begin
                    Inc(foundTotal);
                    if ((foundTotal) mod (100)) = (0) then begin
                        WriteLn(Self.FOUND_KEY + IntToStr(foundTotal));
                    end;
                    nextKey := keys[0];
                    end_ := (begin_) + (System.Length(nextKey));
                    newStringBuffer.delete_(0, newStringBuffer.length());
                    newStringBuffer.append(Copy(replace_, (0) + 1, (begin_) - (0)));
                    newStringBuffer.append(values[0]);
                    index := newStringBuffer.length();
                    newStringBuffer.append(Copy(replace_, (end_) + 1, (System.Length(replace_)) - (end_)));
                    replace_ := newStringBuffer.toString();
                    if (System.Length(keys)) > (1) then begin
                        nextSecondKey := keys[1];
                        begin2 := replace_.indexOf(nextSecondKey, index);
                        if (begin2) <> (-1) then begin
                            end2 := (begin2) + (System.Length(nextSecondKey));
                            newStringBuffer.delete_(0, newStringBuffer.length());
                            newStringBuffer.append(Copy(replace_, (0) + 1, (begin2) - (0)));
                            newStringBuffer.append(values[1]);
                            index := newStringBuffer.length();
                            newStringBuffer.append(Copy(replace_, (end2) + 1, (System.Length(replace_)) - (end2)));
                            replace_ := newStringBuffer.toString();
                        end;
                    end;
                    Inc(totalNumberOfReplaces);
                    if ((total) <> (Low(Integer))) and ((totalNumberOfReplaces) >= (total)) then begin
                        Break;
                    end;
                end else begin
                    Break;
                end;
            end;
        end;
        if (totalNumberOfReplaces) > (0) then begin
            if TLogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().REPLACE) then begin
                Self.logUtil.putF('Total Number Of Replaces: ' + IntToStr(totalNumberOfReplaces), TJava.Box(Self), Self.ALL_);
            end;
        end;
        Exit(replace_);
end;
    

function TReplace.line(replace_: string): string;
var
  newStringBuffer: TStringMaker;
  totalNumberOfReplaces: Integer;
  key: string;
  value: string;
  keyArray: TArray<TObject>;
  size: Integer;
  index: Integer;
  begin_: Integer;
  end_: Integer;
  index2: Integer;
begin
        newStringBuffer := TStringMaker.Create();
        totalNumberOfReplaces := 0;
        
        
        keyArray := Self.j2seUtil.getHashMapAsArray(Self.hashMap);
        size := System.Length(keyArray);
        for index2 := 0 to size - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(keyArray[index2]));
            value := TJava.UnboxString(TJava.ToObject(Self.hashMap.get(TJava.Box(key))));
            index := 0;
            while (index) < (System.Length(replace_)) do begin
                newStringBuffer.delete_(0, newStringBuffer.length());
                begin_ := replace_.indexOf(key, index);
                if (begin_) <> (-1) then begin
                    WriteLn(Self.FOUND_KEY);
                    end_ := (replace_.indexOf(#10, (begin_) + (System.Length(key)))) + (1);
                    if (end_) >= (0) then begin
                        newStringBuffer.append(Copy(replace_, (0) + 1, (begin_) - (0)));
                        index := newStringBuffer.length();
                        newStringBuffer.append(Copy(replace_, (end_) + 1, (System.Length(replace_)) - (end_)));
                        replace_ := newStringBuffer.toString();
                        Inc(totalNumberOfReplaces);
                    end;
                end else begin
                    Break;
                end;
            end;
        end;
        if TLogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().REPLACE) then begin
            Self.logUtil.putF('Total Number Of Replaces: ' + IntToStr(totalNumberOfReplaces), TJava.Box(Self), Self.ALL_);
        end;
        Exit(replace_);
end;
    

class procedure TReplace.main(args: TArray<string>);
var
  stringUtil_: TStringUtil;
  appUrlGlobals_: TAppUrlGlobals;
  testString: string;
  replace_: TReplace;
  replaceCat: TReplace;
begin
        try
            stringUtil_ := TStringUtil.getInstance();
            appUrlGlobals_ := TAppUrlGlobals.Create();
            appUrlGlobals_.setWebappPath('G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools');
            TURLGLOBALS.init(appUrlGlobals_);
            testString := '"super gun" big tank "goodgunriflegun';
            replace_ := TReplace.Create('gun', 'abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz');
            WriteLn('Old String: ' + testString);
            testString := replace_.all(testString);
            WriteLn('New String: ' + testString);
            replaceCat := TReplace.Create('abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz', stringUtil_.EMPTY_STRING);
            testString := replaceCat.all(testString);
            WriteLn('New String: ' + testString);
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

