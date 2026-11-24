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
// package dynamic
unit NativeLibraryHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNativeLibraryHelper = class(TObject)
  public
    library_: string;
    procedure InitFields;
        constructor Create(library_: string);
        procedure load; virtual;
  end;

implementation

{AB:CODE}

procedure TNativeLibraryHelper.InitFields;
begin
  
end;
    

constructor TNativeLibraryHelper.Create(library_: string);
begin
    inherited Create;
    InitFields;
        Self.library_ := library_;
end;
    

procedure TNativeLibraryHelper.load;
begin
        TSystem.loadLibrary(Self.library_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

