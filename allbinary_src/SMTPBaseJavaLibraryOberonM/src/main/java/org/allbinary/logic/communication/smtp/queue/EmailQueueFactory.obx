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
// package org.allbinary.logic.communication.smtp.queue
unit EmailQueueFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EmailQueueInterface;

type
  {AB:TYPES}
  TEmailQueueFactory = class(TObject)
  public
    class var emailQueueInterface: IEmailQueueInterface;
        constructor Create;
        class function getInstance: IEmailQueueInterface; static;
  end;

implementation
uses
  BasicEmailQueue;


{AB:CODE}
    

constructor TEmailQueueFactory.Create;
begin
    inherited Create;
end;
    

class function TEmailQueueFactory.getInstance: IEmailQueueInterface;
begin
        Exit(TEmailQueueFactory.emailQueueInterface);
end;

initialization
  {AB:INITIALIZATION}
  TEmailQueueFactory.emailQueueInterface := (TJava.ToObject(TBasicEmailQueue.getInstance()) as IEmailQueueInterface);
  {AB:END}

end.

