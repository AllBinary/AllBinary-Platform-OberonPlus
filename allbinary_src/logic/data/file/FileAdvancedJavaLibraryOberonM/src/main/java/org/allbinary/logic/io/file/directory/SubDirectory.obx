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
// package org.allbinary.logic.io.file.directory
unit SubDirectory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, BasicArrayList, Directory;

type
  {AB:TYPES}
  TSubDirectory = class(TObject)
  public
    directory: TDirectory;
    class var instance: TSubDirectory;
    procedure InitFields;
        class function getInstance: TSubDirectory; static;
        constructor Create;
        function search(fileFilter_: IFileFilter; file_: TAbFile): TBasicArrayList; overload; virtual;
        function search(file_: TAbFile): TBasicArrayList; overload; virtual;
        function search(searchValue: string; file_: TAbFile): TBasicArrayList; overload; virtual;
        function search(level: Integer; file_: TAbFile): TBasicArrayList; overload; virtual;
        class function toString(files: TBasicArrayList): string; static;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TSubDirectory.InitFields;
begin
  Self.directory := TDirectory.getInstance();
end;
    

class function TSubDirectory.getInstance: TSubDirectory;
begin
        Exit(TSubDirectory.instance);
end;
    

constructor TSubDirectory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TSubDirectory.search(fileFilter_: IFileFilter; file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.directory.search(fileFilter_, file_, True));
end;
    

function TSubDirectory.search(file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.directory.search(file_, True));
end;
    

function TSubDirectory.search(searchValue: string; file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.directory.search(searchValue, file_, True));
end;
    

function TSubDirectory.search(level: Integer; file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.directory.search(level, file_, True));
end;
    

class function TSubDirectory.toString(files: TBasicArrayList): string;
var
  stringBuffer: TStringMaker;
  NEW_LINE: string;
  size: Integer;
  file_: TAbFile;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        NEW_LINE := TCommonSeps.getInstance().NEW_LINE;
        size := files.size();
        for index := 0 to size - 1 do begin
            file_ := TAbFile(TJava.ToObject(files.get(index)));
            stringBuffer.append(file_.getPath());
            stringBuffer.append(NEW_LINE);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TSubDirectory.instance := TSubDirectory.Create();
  {AB:END}

end.

