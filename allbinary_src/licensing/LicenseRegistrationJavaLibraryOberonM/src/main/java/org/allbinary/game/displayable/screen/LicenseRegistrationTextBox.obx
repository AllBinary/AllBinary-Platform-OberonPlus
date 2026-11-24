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
// package org.allbinary.game.displayable.screen
unit LicenseRegistrationTextBox;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Graphics, LogUtil, BasicColor, CustomTextBox, Paintable;

type
  {AB:TYPES}
  TLicenseRegistrationTextBox = class(TCustomTextBox)
  public
    logUtil: TLogUtil;
    pleaseWaitPaintable: TPaintable;
    paintable: TPaintable;
    class var DISPLAY_COMMAND: TCommand;
    class var SUBMIT_COMMAND: TCommand;
    procedure InitFields;
        constructor Create(cmdListener: ICommandListener; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure initCommands(cmdListener: ICommandListener); virtual;
        procedure open; virtual;
        procedure close; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure submit; virtual;
  end;

implementation
uses
  Font, TextField, CommonStrings, StringUtil, GameCommandsFactory, BasicColorFactory, NullPaintable, SimpleTextPaintable, VirtualKeyboardEventHandler;


{AB:CODE}

procedure TLicenseRegistrationTextBox.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.pleaseWaitPaintable := TSimpleTextPaintable.Create(Self.commonStrings.PLEASE_WAIT, TBasicColorFactory.getInstance().WHITE);
  Self.paintable := TNullPaintable.getInstance();
end;
    

constructor TLicenseRegistrationTextBox.Create(cmdListener: ICommandListener; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(cmdListener, 'Enter Registration Code:', TStringUtil.getInstance().EMPTY_STRING, 60, TTextField.ANY, TFont.getDefaultFont(), backgrounBasicColor, foregroundBasicColor);
        InitFields;
end;
    

procedure TLicenseRegistrationTextBox.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.addCommand(TGameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        Self.addCommand(TGameCommandsFactory.getInstance().TOGGLE_KEYBOARD);
        Self.addCommand(TLicenseRegistrationTextBox.SUBMIT_COMMAND);
        Self.setCommandListener(cmdListener);
end;
    

procedure TLicenseRegistrationTextBox.open;
var
  virtualKeyboardEventHandler_: TVirtualKeyboardEventHandler;
begin
        try
            virtualKeyboardEventHandler_ := TVirtualKeyboardEventHandler.getInstance();
            virtualKeyboardEventHandler_.fireEvent(virtualKeyboardEventHandler_.SHOW_EVENT);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'open', TJava.Box(e));
            end;
        end;
        inherited open();
        Self.paintable := TNullPaintable.getInstance();
        Self.repaint();
end;
    

// throws Exception
procedure TLicenseRegistrationTextBox.close;
var
  virtualKeyboardEventHandler_: TVirtualKeyboardEventHandler;
begin
        try
            virtualKeyboardEventHandler_ := TVirtualKeyboardEventHandler.getInstance();
            virtualKeyboardEventHandler_.fireEvent(virtualKeyboardEventHandler_.HIDE_EVENT);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'open', TJava.Box(e));
            end;
        end;
        Self.paintable := Self.pleaseWaitPaintable;
        Self.repaint();
        inherited close();
end;
    

procedure TLicenseRegistrationTextBox.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
        Self.paintable.paint(graphics_);
end;
    

procedure TLicenseRegistrationTextBox.submit;
var
  commandListener_: ICommandListener;
begin
        commandListener_ := Self.getCustomCommandListener();
        commandListener_.commandAction(TLicenseRegistrationTextBox.SUBMIT_COMMAND, Self);
end;

initialization
  {AB:INITIALIZATION}
  TLicenseRegistrationTextBox.DISPLAY_COMMAND := TCommand.Create('Register', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 3);
  TLicenseRegistrationTextBox.SUBMIT_COMMAND := TCommand.Create('Submit', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 3);
  {AB:END}

end.

