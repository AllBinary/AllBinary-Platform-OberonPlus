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
// package org.allbinary.logic.system.loader
unit NativeLibraryClassLoader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNativeLibraryClassLoader = class(TClassLoader)
  public
    message: string;
    procedure InitFields;
        constructor Create(parent: TClassLoader);
  end;

implementation

{AB:CODE}

procedure TNativeLibraryClassLoader.InitFields;
begin
  Self.message := 'This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries';
end;
    

constructor TNativeLibraryClassLoader.Create(parent: TClassLoader);
begin
        inherited Create(parent);
        InitFields;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

