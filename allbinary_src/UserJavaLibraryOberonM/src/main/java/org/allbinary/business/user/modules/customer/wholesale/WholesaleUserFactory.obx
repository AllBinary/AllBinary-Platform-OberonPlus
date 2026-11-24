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
// package org.allbinary.business.user.modules.customer.wholesale
unit WholesaleUserFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserFactoryInterface, UserInterface;

type
  {AB:TYPES}
  TWholesaleUserFactory = class(TInterfacedObject, IUserFactoryInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getInstance: IUserInterface; overload; virtual;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IUserInterface; overload; virtual;
  end;

implementation
uses
  WholesaleUser;


{AB:CODE}

function TWholesaleUserFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWholesaleUserFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TWholesaleUserFactory.getInstance: IUserInterface;
begin
        Exit(TWholesaleUser.Create());
end;
    

// throws Exception
function TWholesaleUserFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IUserInterface;
begin
        Exit(TWholesaleUser.Create(hashMap_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

