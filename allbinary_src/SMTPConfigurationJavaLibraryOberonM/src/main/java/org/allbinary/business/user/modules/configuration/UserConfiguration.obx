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
// package org.allbinary.business.user.modules.configuration
unit UserConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TimeCreated, TimeLastModified, UserEmailConfigurationInterface, UserConfigurationInterface;

type
  {AB:TYPES}
  TUserConfiguration = class(TInterfacedObject, IUserConfigurationInterface)
  public
    userEmailConfigurationInterface: IUserEmailConfigurationInterface;
    timeCreated: TTimeCreated;
    timeLastModified: TTimeLastModified;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function getUserEmailConfigurationInterface: IUserEmailConfigurationInterface; virtual;
        procedure setUserEmailConfigurationInterface(userEmailConfigurationInterface_: IUserEmailConfigurationInterface); virtual;
        function getTimeCreated: TTimeCreated; virtual;
        function getTimeLastModified: TTimeLastModified; virtual;
        procedure setTimeCreated(timeCreated_: TTimeCreated); virtual;
        procedure setTimeLastModified(timeLastModified_: TTimeLastModified); virtual;
  end;

implementation
uses
  EntryData, UserEmailConfiguration;


{AB:CODE}

procedure TUserConfiguration.InitFields;
begin
  
  
  
end;

function TUserConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserConfiguration.Create;
begin
    inherited Create;
    InitFields;
        Self.userEmailConfigurationInterface := (TJava.ToObject(TUserEmailConfiguration.Create()) as IUserEmailConfigurationInterface);
        Self.timeCreated := TTimeCreated.Create(0);
        Self.timeLastModified := TTimeLastModified.Create(0);
end;
    

constructor TUserConfiguration.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.userEmailConfigurationInterface := (TJava.ToObject(TUserEmailConfiguration.Create(hashMap_)) as IUserEmailConfigurationInterface);
        Self.timeCreated := TTimeCreated.Create(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEntryData.getInstance().TIMECREATED)))));
        Self.timeLastModified := TTimeLastModified.Create(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEntryData.getInstance().LASTMODIFIED)))));
end;
    

function TUserConfiguration.getUserEmailConfigurationInterface: IUserEmailConfigurationInterface;
begin
        Exit(Self.userEmailConfigurationInterface);
end;
    

procedure TUserConfiguration.setUserEmailConfigurationInterface(userEmailConfigurationInterface_: IUserEmailConfigurationInterface);
begin
        Self.userEmailConfigurationInterface := userEmailConfigurationInterface_;
end;
    

function TUserConfiguration.getTimeCreated: TTimeCreated;
begin
        Exit(Self.timeCreated);
end;
    

function TUserConfiguration.getTimeLastModified: TTimeLastModified;
begin
        Exit(Self.timeLastModified);
end;
    

procedure TUserConfiguration.setTimeCreated(timeCreated_: TTimeCreated);
begin
        Self.timeCreated := timeCreated_;
end;
    

procedure TUserConfiguration.setTimeLastModified(timeLastModified_: TTimeLastModified);
begin
        Self.timeLastModified := timeLastModified_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

