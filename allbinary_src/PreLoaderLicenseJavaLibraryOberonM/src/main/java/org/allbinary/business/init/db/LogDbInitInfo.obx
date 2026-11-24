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
// package org.allbinary.business.init.db
unit LogDbInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DbInitInfo;

type
  {AB:TYPES}
  TLogDbInitInfo = class(TDbInitInfo)
  public
    class var INITFILE: string;
        constructor Create; overload;
        constructor Create(read: Boolean); overload;
  end;

implementation

{AB:CODE}
    

constructor TLogDbInitInfo.Create;
begin
        inherited Create(TLogDbInitInfo.INITFILE, True);
end;
    

constructor TLogDbInitInfo.Create(read: Boolean);
begin
        inherited Create(TLogDbInitInfo.INITFILE, read);
end;

initialization
  {AB:INITIALIZATION}
  TLogDbInitInfo.INITFILE := 'logdbinitdata.dat';
  {AB:END}

end.

