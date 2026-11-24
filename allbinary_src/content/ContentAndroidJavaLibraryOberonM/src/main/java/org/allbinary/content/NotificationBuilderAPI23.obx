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
// package org.allbinary.content
unit NotificationBuilderAPI23;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, PendingIntent, Context, Parcelable, NotificationBuilder;

type
  {AB:TYPES}
  TNotificationBuilderAPI23 = class(TNotificationBuilder)
  public
    constructor Create;
        function build(context_: TContext; command_: TCommand; message: string; integer_: Integer; pendingIntent_: TPendingIntent): TParcelable; override;
  end;

implementation
uses
  Notification, Builder;


{AB:CODE}

constructor TNotificationBuilderAPI23.Create;
begin
  inherited Create;
end;
    

function TNotificationBuilderAPI23.build(context_: TContext; command_: TCommand; message: string; integer_: Integer; pendingIntent_: TPendingIntent): TParcelable;
var
  notification_: TNotification;
begin
        notification_ := TBuilder.Create(context_).setSmallIcon((integer_)).setTicker(message).setWhen(DateTimeToUnix(Now) * 1000).setContentTitle(command_.getLabel()).setContentText(message).setContentIntent(pendingIntent_).build();
        Exit(notification_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

