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
// package org.allbinary.graphics.j2me.workarea.tools
unit ToolFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, GraphicsItemInterfaceFactoryInterface;

type
  {AB:TYPES}
  TToolFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    selectedTool: IGraphicsItemInterfaceFactoryInterface;
    tool: string;
    SELECTED_LABEL: string;
    class var instance: TToolFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TToolFactory; static;
        procedure setSelectedTool(tool: string); virtual;
        function getSelectedToolFactory: IGraphicsItemInterfaceFactoryInterface; virtual;
  end;

implementation
uses
  GraphicItemFactory, StatusFactory;


{AB:CODE}

procedure TToolFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.selectedTool := nil;
  Self.tool := nil;
  Self.SELECTED_LABEL := 'Selected: ';
end;

constructor TToolFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TToolFactory.getInstance: TToolFactory;
begin
        Exit(TToolFactory.instance);
end;
    

procedure TToolFactory.setSelectedTool(tool: string);
begin
        try
            TStatusFactory.getInstance().setStatus(Self.SELECTED_LABEL + tool);
            Self.tool := tool;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setSelectionTool', TJava.Box(e));
            end;
        end;
end;
    

function TToolFactory.getSelectedToolFactory: IGraphicsItemInterfaceFactoryInterface;
begin
        TStatusFactory.getInstance().setStatus('Tool In Use: ' + Self.tool);
        if (Self.tool) <> ('') then begin
            Self.selectedTool := TGraphicItemFactory.getInstance().getInstance(Self.tool);
            Self.logUtil.putF('New Tool: ' + TJava.ToString(Self.selectedTool), TJava.Box(Self), 'getSelectedToolFactory');
            Exit(Self.selectedTool);
        end else begin
            Exit(nil);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TToolFactory.instance := TToolFactory.Create();
  {AB:END}

end.

