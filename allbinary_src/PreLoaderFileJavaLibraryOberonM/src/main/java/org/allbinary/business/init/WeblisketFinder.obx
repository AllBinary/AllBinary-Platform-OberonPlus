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
// package org.allbinary.business.init
unit WeblisketFinder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, SubDirectory, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TWeblisketFinder = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    subDirectory: TSubDirectory;
    class var instance: TWeblisketFinder;
    class var KEY: string;
    procedure InitFields;
        class function getInstance: TWeblisketFinder; static;
        constructor Create;
        function findAll(path: string): TBasicArrayList; virtual;
        function getInstallationPath(file_: TAbFile): string; virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  LogConfigTypeFactory, LogConfigTypes, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TWeblisketFinder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.subDirectory := TSubDirectory.getInstance();
end;
    

class function TWeblisketFinder.getInstance: TWeblisketFinder;
begin
        Exit(TWeblisketFinder.instance);
end;
    

constructor TWeblisketFinder.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TWeblisketFinder.findAll(path: string): TBasicArrayList;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'findAll');
            Exit(Self.subDirectory.search(TWeblisketFinder.KEY, TAbFile.createAbFile(path)));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'findAll', TJava.Box(e));
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'findAll', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TWeblisketFinder.getInstallationPath(file_: TAbFile): string;
var
  filePath: string;
  end_: Integer;
begin
        try
            filePath := file_.getPath();
            end_ := (Pos(TJava.ToString(TWeblisketFinder.KEY), filePath) - 1);
            if (end_) < (0) then begin
                Exit(nil);
            end;
            Exit(Copy(filePath, (0) + 1, (end_) - (0)));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstallationPath', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

// throws Exception
class procedure TWeblisketFinder.main(args: TArray<string>);
var
  stringUtil_: TStringUtil;
  vector: TBasicArrayList;
begin
        stringUtil_ := TStringUtil.getInstance();
        vector := TWeblisketFinder.getInstance().findAll(stringUtil_.EMPTY_STRING);
        WriteLn(vector.size());
end;

initialization
  {AB:INITIALIZATION}
  TWeblisketFinder.instance := TWeblisketFinder.Create();
  TWeblisketFinder.KEY := 'installerdata.dat';
  {AB:END}

end.

