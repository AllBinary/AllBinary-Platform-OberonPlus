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
// package org.allbinary.business.context.modules.storefront.statistics.users
unit StoreFrontUsersStatisticsData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStoreFrontUsersStatisticsData = class(TObject)
  public
    NAME: string;
    NUMBEROFUSERS: string;
    class var instance: TStoreFrontUsersStatisticsData;
    procedure InitFields;
        constructor Create;
        class function getInstance: TStoreFrontUsersStatisticsData; static;
  end;

implementation

{AB:CODE}

procedure TStoreFrontUsersStatisticsData.InitFields;
begin
  Self.NAME := 'STOREFRONT_USERS_STATISTICS_NAME';
  Self.NUMBEROFUSERS := 'STOREFRONT_USERS_STATISTICS_NUMBER_OF_USERS';
end;
    

constructor TStoreFrontUsersStatisticsData.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TStoreFrontUsersStatisticsData.getInstance: TStoreFrontUsersStatisticsData;
begin
        Exit(TStoreFrontUsersStatisticsData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TStoreFrontUsersStatisticsData.instance := TStoreFrontUsersStatisticsData.Create();
  {AB:END}

end.

