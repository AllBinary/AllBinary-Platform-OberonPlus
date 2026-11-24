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
unit DirectoryOrIncludeFileExtensionBooleanFileVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, IncludeFileExtensionsBooleanFileVisitor, BasicArrayList;

type
  {AB:TYPES}
  TDirectoryOrIncludeFileExtensionBooleanFileVisitor = class(TIncludeFileExtensionsBooleanFileVisitor)
  public
    includesString: string;
    procedure InitFields;
        constructor Create(filterStringBasicArrayList: TBasicArrayList); overload;
        constructor Create(filterStringBasicArrayList: TBasicArrayList; includesString: string); overload;
        function visit(file_: TAbFile): Boolean; override;
  end;

implementation

{AB:CODE}

procedure TDirectoryOrIncludeFileExtensionBooleanFileVisitor.InitFields;
begin
  
end;
    

constructor TDirectoryOrIncludeFileExtensionBooleanFileVisitor.Create(filterStringBasicArrayList: TBasicArrayList);
begin
        inherited Create(filterStringBasicArrayList);
        InitFields;
        Self.includesString := nil;
end;
    

constructor TDirectoryOrIncludeFileExtensionBooleanFileVisitor.Create(filterStringBasicArrayList: TBasicArrayList; includesString: string);
begin
        inherited Create(filterStringBasicArrayList);
        InitFields;
        Self.includesString := includesString;
end;
    

function TDirectoryOrIncludeFileExtensionBooleanFileVisitor.visit(file_: TAbFile): Boolean;
begin
        if file_.isDirectory() then begin
            Exit(True);
        end;
        if ((Self.includesString) = ('')) or ((file_.getAbsolutePath().indexOf(Self.includesString)) >= (0)) then begin
            Exit(inherited visit(file_));
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

