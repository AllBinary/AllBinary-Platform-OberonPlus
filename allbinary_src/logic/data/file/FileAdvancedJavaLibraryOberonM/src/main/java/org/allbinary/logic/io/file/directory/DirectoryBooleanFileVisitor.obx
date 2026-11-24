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
unit DirectoryBooleanFileVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, VisitorInterface;

type
  {AB:TYPES}
  TDirectoryBooleanFileVisitor = class(TInterfacedObject, IVisitorInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function visit(anyType: TObject): TObject; overload; virtual;
        function visit(file_: TAbFile): Boolean; overload; virtual;
  end;

implementation

{AB:CODE}

function TDirectoryBooleanFileVisitor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDirectoryBooleanFileVisitor.Create;
begin
    inherited Create;
end;
    

function TDirectoryBooleanFileVisitor.visit(anyType: TObject): TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.visit(TAbFile(TJava.ToObject(anyType))))));
end;
    

function TDirectoryBooleanFileVisitor.visit(file_: TAbFile): Boolean;
begin
        if file_.isDirectory() then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

