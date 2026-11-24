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
// package org.allbinary.logic.system.security.licensing
unit MobileClientInformation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, AbeClientInformation;

type
  {AB:TYPES}
  TMobileClientInformation = class(TAbeClientInformation)
  public
    class var DESC: string;
    class var ANDROID_DESC: string;
        constructor Create(name: string; version: string; specialName: string; shortName: string);
        function toHashtable: TABHashtable<TObject, TObject>; override;
  end;

implementation
uses
  PartnerIdentifierFileUtil, StringMaker, RegistrationConfiguration, CommonSeps, CommonStrings;


{AB:CODE}
    

constructor TMobileClientInformation.Create(name: string; version: string; specialName: string; shortName: string);
var
  string_: string;
  number: string;
  commonStrings_: TCommonStrings;
begin
        inherited Create(name, version, TStringMaker.Create().append(specialName).append(TCommonSeps.getInstance().SPACE).append(TPartnerIdentifierFileUtil.getInstance().get()).toString(), shortName);
        string_ := Self.getSpecialName();
        number := Copy(string_, ((System.Length(string_)) - (1)) + 1, MaxInt);
        if TJava.IsNull(TInteger.getInteger(number)) then begin
            Self.setHardSale(False);
        end;
        commonStrings_ := TCommonStrings.getInstance();
        if Self.isHardSale() then begin
            Self.logUtil.putF('Use Hard Coded Selling', TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        end else begin
            Self.logUtil.putF('Don''t Use Hard Coded Selling', TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        end;
end;
    

function TMobileClientInformation.toHashtable: TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
  registrationConfiguration_: TRegistrationConfiguration;
begin
        hashtable := inherited toHashtable();
        registrationConfiguration_ := TRegistrationConfiguration.getInstance();
        hashtable.put(TJava.Box(registrationConfiguration_.NAME), TJava.Box(registrationConfiguration_.getRegistrationCode()));
        Exit(hashtable);
end;

initialization
  {AB:INITIALIZATION}
  TMobileClientInformation.DESC := 'Mobile';
  TMobileClientInformation.ANDROID_DESC := 'Android' + TJava.ToString(TMobileClientInformation.DESC);
  {AB:END}

end.

