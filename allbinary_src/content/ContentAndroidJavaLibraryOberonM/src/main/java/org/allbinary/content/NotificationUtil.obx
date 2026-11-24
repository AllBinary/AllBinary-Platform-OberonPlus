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
unit NotificationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, NotificationManager, LogUtil, NotificationBuilder;

type
  {AB:TYPES}
  TNotificationUtil = class(TObject)
  public
    logUtil: TLogUtil;
    notificationManager: TNotificationManager;
    notificationBuilder: TNotificationBuilder;
    class var SINGLETON: TNotificationUtil;
    procedure InitFields;
        class function getInstance: TNotificationUtil; static;
        constructor Create;
        procedure notify(command_: TCommand; resource: string; message: string); virtual;
  end;

implementation
uses
  NotificationBuilderAPI23, CommandUriAction, Notification, PendingIntent, Context, Intent, AndroidInfoFactory, ResourceUtil, CommonStrings;


{AB:CODE}

procedure TNotificationUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.notificationManager := TNotificationManager(TJava.ToObject(TResourceUtil.getInstance().getContext().getSystemService(TContext.NOTIFICATION_SERVICE)));
  
end;
    

class function TNotificationUtil.getInstance: TNotificationUtil;
begin
        Exit(TNotificationUtil.SINGLETON);
end;
    

constructor TNotificationUtil.Create;
var
  SDK_VERSION: Integer;
begin
    inherited Create;
    InitFields;
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        if (SDK_VERSION) > (22) then begin
            Self.notificationBuilder := TNotificationBuilderAPI23.Create();
        end else begin
            Self.notificationBuilder := TNotificationBuilder.NULL_NOTIFICATION_BUILDER;
        end;
end;
    

procedure TNotificationUtil.notify(command_: TCommand; resource: string; message: string);
var
  context_: TContext;
  intent_: TIntent;
  integer_: Integer;
  FLAG_IMMUTABLE: Integer;
  SDK_VERSION: Integer;
  pendingIntent_: TPendingIntent;
  commonStrings_: TCommonStrings;
begin
        context_ := TResourceUtil.getInstance().getContext();
        intent_ := TCommandUriAction.getInstance().getIntent(command_);
        integer_ := TResourceUtil.getInstance().getResourceId(resource);
        FLAG_IMMUTABLE := (1) shl (26);
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        pendingIntent_ := TPendingIntent.getActivity(context_, 0, intent_, TJava.IfThen<Variant>((SDK_VERSION) > (22), FLAG_IMMUTABLE, 0));
        if (Self.notificationBuilder) = (nil) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.NOT_IMPLEMENTED);
            Exit;
        end;
        Self.notificationBuilder.build(context_, command_, message, integer_, pendingIntent_);
end;

initialization
  {AB:INITIALIZATION}
  TNotificationUtil.SINGLETON := TNotificationUtil.Create();
  {AB:END}

end.

