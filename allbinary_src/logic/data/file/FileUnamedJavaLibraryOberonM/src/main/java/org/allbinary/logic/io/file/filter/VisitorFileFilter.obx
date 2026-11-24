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
// package org.allbinary.logic.io.file.filter
unit VisitorFileFilter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, VisitorInterface;

type
  {AB:TYPES}
  TVisitorFileFilter = class(TInterfacedObject, IFileFilter)
  public
    booleanVisitorInterface: IVisitorInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(booleanVisitorInterface: IVisitorInterface);
        function accept(file_: TFile): Boolean; overload; virtual;
        function accept(file_: TAbFile): Boolean; overload; virtual;
  end;

implementation
uses
  FileWrapperUtil;


{AB:CODE}

procedure TVisitorFileFilter.InitFields;
begin
  
end;

function TVisitorFileFilter.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TVisitorFileFilter.Create(booleanVisitorInterface: IVisitorInterface);
begin
    inherited Create;
    InitFields;
        Self.booleanVisitorInterface := booleanVisitorInterface;
end;
    

function TVisitorFileFilter.accept(file_: TFile): Boolean;
var
  abFile_: TAbFile;
  isFileAcceptable: Boolean;
begin
        abFile_ := TFileWrapperUtil.wrapFile(file_);
        isFileAcceptable := (Boolean(Self.booleanVisitorInterface.visit(abFile_))).booleanValue();
        Exit((isFileAcceptable) or (file_.isDirectory()));
end;
    

function TVisitorFileFilter.accept(file_: TAbFile): Boolean;
var
  isFileAcceptable: Boolean;
begin
        isFileAcceptable := (Boolean(Self.booleanVisitorInterface.visit(file_))).booleanValue();
        Exit((isFileAcceptable) or (file_.isDirectory()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

