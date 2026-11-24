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
// package org.allbinary.business.installer
unit DynamicInitDb;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DatabaseConnectionInfoInterface, AbeClientInformationInterface, InitDb;

type
  {AB:TYPES}
  // Warning you must have sql root access
  TDynamicInitDb = class(TInitDb)
  public
        constructor Create(abeClientInformation: IAbeClientInformationInterface); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface); overload;
  end;

implementation
uses
  InitDbHelperFactory, LicensingException;


{AB:CODE}
    

constructor TDynamicInitDb.Create(abeClientInformation: IAbeClientInformationInterface);
begin
    inherited Create;
        Self.setHelper(TInitDbHelperFactory.getInstance(abeClientInformation));
end;
    

constructor TDynamicInitDb.Create(abeClientInformation: IAbeClientInformationInterface; databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface);
begin
    inherited Create;
        Self.setHelper(TInitDbHelperFactory.getInstance(abeClientInformation, databaseConnectionInfoInterface_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

