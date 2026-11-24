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
unit InitDbHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, DatabaseConnectionInfoInterface;

type
  {AB:TYPES}
  TInitDbHelperFactory = class(TObject)
  public
    class var CLASSNAME: string;
        constructor Create;
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface): TObject; overload; static;
        class function getInstance(abeClientInformation: IAbeClientInformationInterface): TObject; overload; static;
  end;

implementation
uses
  AbeFactory, LicensingException;


{AB:CODE}
    

constructor TInitDbHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
class function TInitDbHelperFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface): TObject;
var
  params: TArray<TObject>;
  classes: TArray<TClass>;
  anyType: TObject;
begin
        params := TJava.NewArray<TObject>(1);
        classes := TJava.NewArray<TClass>(1);
        classes[0] := IDatabaseConnectionInfoInterface;
        params[0] := TJava.Box(databaseConnectionInfoInterface_);
        anyType := TJava.Box(TAbeFactory.getInstance().getInstance(abeClientInformation, TInitDbHelperFactory.CLASSNAME, classes, params));
        Exit(TJava.Box(anyType));
end;
    

// throws LicensingException
class function TInitDbHelperFactory.getInstance(abeClientInformation: IAbeClientInformationInterface): TObject;
var
  anyType: TObject;
begin
        anyType := TJava.Box(TAbeFactory.getInstance().getInstance(abeClientInformation, TInitDbHelperFactory.CLASSNAME, nil, nil));
        Exit(TJava.Box(anyType));
end;

initialization
  {AB:INITIALIZATION}
  TInitDbHelperFactory.CLASSNAME := 'org.allbinary.business.installer.InitDbCrypted';
  {AB:END}

end.

