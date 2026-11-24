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
unit UserDbInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DbInitInfo;

type
  {AB:TYPES}
  TUserDbInitInfo = class(TDbInitInfo)
  public
    class var INITFILE: string;
        constructor Create; overload;
        constructor Create(read: Boolean); overload;
  end;

implementation

{AB:CODE}
    

constructor TUserDbInitInfo.Create;
begin
        inherited Create(TUserDbInitInfo.INITFILE, True);
end;
    

constructor TUserDbInitInfo.Create(read: Boolean);
begin
        inherited Create(TUserDbInitInfo.INITFILE, read);
end;

initialization
  {AB:INITIALIZATION}
  TUserDbInitInfo.INITFILE := 'userdbinitdata.dat';
  {AB:END}

end.

