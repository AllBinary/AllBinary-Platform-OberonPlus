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
// package org.allbinary.logic.io.file.visitor
unit ExcludeFileExtensionsBooleanFileVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, BasicArrayList, BooleanFileVisitor;

type
  {AB:TYPES}
  TExcludeFileExtensionsBooleanFileVisitor = class(TBooleanFileVisitor)
  public
        constructor Create(filterStringBasicArrayList: TBasicArrayList);
        function visit(file_: TAbFile): Boolean; overload; override;
        function visit(file_: TAbFile; fileNameString: string): Boolean; overload; override;
  end;

implementation

{AB:CODE}
    

constructor TExcludeFileExtensionsBooleanFileVisitor.Create(filterStringBasicArrayList: TBasicArrayList);
begin
        inherited Create(filterStringBasicArrayList);
end;
    

function TExcludeFileExtensionsBooleanFileVisitor.visit(file_: TAbFile): Boolean;
begin
        if (Self.getFilterStringBasicArrayList().size()) = (0) then begin
            Exit(True);
        end;
        Exit(inherited visit(file_));
end;
    

function TExcludeFileExtensionsBooleanFileVisitor.visit(file_: TAbFile; fileNameString: string): Boolean;
var
  fileNameAndExtension: string;
  startIndex: Integer;
  fileName: string;
begin
        fileNameAndExtension := file_.getPath();
        if (System.Length(fileNameAndExtension)) > (System.Length(fileNameString)) then begin
            startIndex := (System.Length(fileNameAndExtension)) - (System.Length(fileNameString));
            fileName := Copy(fileNameAndExtension, (startIndex) + 1, MaxInt);
            if (CompareStr(fileName, fileNameString)) = (0) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

