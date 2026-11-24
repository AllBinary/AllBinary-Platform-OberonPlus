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
// package org.allbinary.logic.io.file
unit FileLockUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AbFileOutputStream, AbFile;

type
  {AB:TYPES}
  TFileLockUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TFileLockUtil;
    procedure InitFields;
        class function getInstance: TFileLockUtil; static;
        constructor Create;
        function getAll(vector: TBasicArrayList; isReturnOnFailure: Boolean): TBasicArrayList; virtual;
        function getAllPossible(vector: TBasicArrayList): TBasicArrayList; virtual;
        function getAllOrNone(vector: TBasicArrayList): TBasicArrayList; virtual;
        function getLock(file_: TAbFile): TFileLock; overload; virtual;
        function getLock(fileOutputStream: TAbFileOutputStream): TFileLock; overload; virtual;
        function getLock(fileChannel_: TFileChannel): TFileLock; overload; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, StreamUtil;


{AB:CODE}

procedure TFileLockUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TFileLockUtil.getInstance: TFileLockUtil;
begin
        Exit(TFileLockUtil.instance);
end;
    

constructor TFileLockUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TFileLockUtil.getAll(vector: TBasicArrayList; isReturnOnFailure: Boolean): TBasicArrayList;
var
  fileLockVector: TBasicArrayList;
  size: Integer;
  file_: TAbFile;
  fileLock_: TFileLock;
  index: Integer;
begin
        fileLockVector := TBasicArrayListD.Create();
        size := vector.size();
        for index := 0 to size - 1 do begin
            file_ := TAbFile(TJava.ToObject(vector.get(index)));
            fileLock_ := Self.getLock(file_);
            if (fileLock_) <> (nil) then begin
                Self.logUtil.putF('File Lock Obtained: ' + TJava.ToString(file_.getAbsolutePath()), TJava.Box(Self), 'getAll');
                fileLockVector.add(TJava.Box(fileLock_));
            end else if isReturnOnFailure then begin
                Self.logUtil.putF('Total Locks Obtained: ' + IntToStr(fileLockVector.size()), TJava.Box(Self), 'getAll');
                Exit(fileLockVector);
            end;
        end;
        Self.logUtil.putF('Total Locks Obtained: ' + IntToStr(fileLockVector.size()), TJava.Box(Self), 'getAll');
        Exit(fileLockVector);
end;
    

// throws Exception
function TFileLockUtil.getAllPossible(vector: TBasicArrayList): TBasicArrayList;
begin
        Exit(Self.getAll(vector, False));
end;
    

// throws Exception
function TFileLockUtil.getAllOrNone(vector: TBasicArrayList): TBasicArrayList;
var
  fileLockVector: TBasicArrayList;
begin
        fileLockVector := Self.getAll(vector, True);
        if (vector.size()) <> (fileLockVector.size()) then begin
            Exit(TBasicArrayListD.Create());
        end else begin
            Exit(fileLockVector);
        end;
end;
    

// throws Exception
function TFileLockUtil.getLock(file_: TAbFile): TFileLock;
begin
        try
        try
            Exit(Self.getLock(TAbFileOutputStream.createFromAbFileAppend(file_, True)));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Exception returns null', TJava.Box(Self), 'getLock', TJava.Box(e));
            Exit(nil);
            end;
        end;
        finally
        end;
end;
    

// throws Exception
function TFileLockUtil.getLock(fileOutputStream: TAbFileOutputStream): TFileLock;
var
  fileLock_: TFileLock;
begin
        try
        try
            fileLock_ := Self.getLock(fileOutputStream.getChannel());
            Exit(fileLock_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Exception returns null', TJava.Box(Self), 'getLock', TJava.Box(e));
            Exit(nil);
            end;
        end;
        finally
            Self.logUtil.putF('Finally - Closing FileOutputStream', TJava.Box(Self), 'getLock');
            TStreamUtil.getInstance().close(fileOutputStream);
        end;
end;
    

// throws Exception
function TFileLockUtil.getLock(fileChannel_: TFileChannel): TFileLock;
var
  fileLock_: TFileLock;
begin
        try
        try
            fileLock_ := fileChannel_.tryLock();
            Exit(fileLock_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Exception returns null', TJava.Box(Self), 'getLock', TJava.Box(e));
            Exit(nil);
            end;
        end;
        finally
            Self.logUtil.putF('Finally - Closing FileChannel', TJava.Box(Self), 'getLock');
            fileChannel_.close();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TFileLockUtil.instance := TFileLockUtil.Create();
  {AB:END}

end.

