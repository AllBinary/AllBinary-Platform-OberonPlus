{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file.directory
unit DirectoryFileVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, VisitorInterface;

type
  {AB:TYPES}
  TDirectoryFileVisitor = class(TInterfacedObject, IVisitorInterface, IFileFilter)
  public
    function JavaObject: TObject;
        constructor Create;
        function accept(arg0: TFile): Boolean; virtual;
        function visit(anyType: TObject): TObject; virtual;
  end;

implementation

{AB:CODE}

function TDirectoryFileVisitor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDirectoryFileVisitor.Create;
begin
    inherited Create;
end;
    

function TDirectoryFileVisitor.accept(arg0: TFile): Boolean;
begin
        Exit((Boolean(Self.visit(TJava.Box(arg0)))).booleanValue());
end;
    

function TDirectoryFileVisitor.visit(anyType: TObject): TObject;
var
  file_: TFile;
  index: Integer;
  aFile: TFile;
begin
        file_ := TFile(TJava.ToObject(anyType));
        index := 1;
        aFile := file_.getParentFile();
        while ((TJava.Assign(aFile, aFile.getParentFile()))) <> (nil) do begin
            Inc(index);
        end;
        if (file_.isDirectory()) and ((index) < (5)) then begin
            Exit(TJava.Box(True));
        end;
        Exit(TJava.Box(False));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

