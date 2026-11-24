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
unit ToolJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MouseEvent, JButton, JList, JPanel;

type
  {AB:TYPES}
  TToolJPanel = class(TJPanel)
  public
    arcJButton: TJButton;
    charJButton: TJButton;
    colorJList: TJList;
    colorJPanel: TJPanel;
    dottedArcJButton: TJButton;
    dottedFillArcJButton: TJButton;
    dottedFillRectJButton: TJButton;
    dottedFillRountRectJButton: TJButton;
    dottedLineJButton: TJButton;
    dottedRectButton: TJButton;
    fillArcJButton: TJButton;
    fillRectJButton: TJButton;
    fillRoundRectJButton: TJButton;
    imageJButton: TJButton;
    lineJButton: TJButton;
    rectJButton: TJButton;
    roundRectJButton: TJButton;
    stringJButton: TJButton;
    procedure InitFields;
        constructor Create;
        procedure initComponents;
        procedure dottedFillRountRectJButtonMousePressed(evt: TMouseEvent);
        procedure dottedFillArcJButtonMousePressed(evt: TMouseEvent);
        procedure dottedFillRectJButtonMousePressed(evt: TMouseEvent);
        procedure dottedArcJButtonMousePressed(evt: TMouseEvent);
        procedure dottedRectButtonMousePressed(evt: TMouseEvent);
        procedure dottedLineJButtonMousePressed(evt: TMouseEvent);
        procedure fillRoundRectJButtonMousePressed(evt: TMouseEvent);
        procedure fillRectJButtonMousePressed(evt: TMouseEvent);
        procedure fillArcJButtonMousePressed(evt: TMouseEvent);
        procedure imageJButtonMousePressed(evt: TMouseEvent);
        procedure roundRectJButtonMousePressed(evt: TMouseEvent);
        procedure charJButtonMousePressed(evt: TMouseEvent);
        procedure stringJButtonMousePressed(evt: TMouseEvent);
        procedure arcJButtonMousePressed(evt: TMouseEvent);
        procedure rectJButtonMouseClicked(evt: TMouseEvent);
        procedure lineJButtonMouseClicked(evt: TMouseEvent);
  end;

implementation
uses
  GridLayout, Font, LinesGraphicItem, MouseAdapter, ToolFactory;


{AB:CODE}

procedure TToolJPanel.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TToolJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
end;
    

procedure TToolJPanel.initComponents;
begin
        Self.lineJButton := TJButton.Create();
        Self.rectJButton := TJButton.Create();
        Self.arcJButton := TJButton.Create();
        Self.stringJButton := TJButton.Create();
        Self.charJButton := TJButton.Create();
        Self.roundRectJButton := TJButton.Create();
        Self.imageJButton := TJButton.Create();
        Self.fillArcJButton := TJButton.Create();
        Self.fillRectJButton := TJButton.Create();
        Self.fillRoundRectJButton := TJButton.Create();
        Self.dottedLineJButton := TJButton.Create();
        Self.dottedRectButton := TJButton.Create();
        Self.dottedArcJButton := TJButton.Create();
        Self.dottedFillRectJButton := TJButton.Create();
        Self.dottedFillArcJButton := TJButton.Create();
        Self.dottedFillRountRectJButton := TJButton.Create();
        Self.colorJPanel := TJPanel.Create();
        Self.colorJList := TJList.Create();
        Self.setLayout(TGridLayout.Create(17, 1));
        Self.lineJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.lineJButton.setText(TLinesGraphicItem.getStaticName());
        Self.lineJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mouseClicked(evt: TMouseEvent);
begin
                Self.lineJButtonMouseClicked(evt);
end;
*));
        Self.add(Self.lineJButton);
        Self.rectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.rectJButton.setText('Rect');
        Self.rectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mouseClicked(evt: TMouseEvent);
begin
                Self.rectJButtonMouseClicked(evt);
end;
*));
        Self.add(Self.rectJButton);
        Self.arcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.arcJButton.setText('Arc');
        Self.arcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.arcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.arcJButton);
        Self.stringJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.stringJButton.setText('String');
        Self.stringJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.stringJButtonMousePressed(evt);
end;
*));
        Self.add(Self.stringJButton);
        Self.charJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.charJButton.setText('Char');
        Self.charJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.charJButtonMousePressed(evt);
end;
*));
        Self.add(Self.charJButton);
        Self.roundRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.roundRectJButton.setText('Round Rect');
        Self.roundRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.roundRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.roundRectJButton);
        Self.imageJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.imageJButton.setText('Image');
        Self.imageJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.imageJButtonMousePressed(evt);
end;
*));
        Self.add(Self.imageJButton);
        Self.fillArcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.fillArcJButton.setText('Fill Arc');
        Self.fillArcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.fillArcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.fillArcJButton);
        Self.fillRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.fillRectJButton.setText('Fill Rect');
        Self.fillRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.fillRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.fillRectJButton);
        Self.fillRoundRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.fillRoundRectJButton.setText('Fill Rnd Rect');
        Self.fillRoundRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.fillRoundRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.fillRoundRectJButton);
        Self.dottedLineJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedLineJButton.setText('Dot Line');
        Self.dottedLineJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedLineJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedLineJButton);
        Self.dottedRectButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedRectButton.setText('Dot Rect');
        Self.dottedRectButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedRectButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedRectButton);
        Self.dottedArcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedArcJButton.setText('Dot Arc');
        Self.dottedArcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedArcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedArcJButton);
        Self.dottedFillRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedFillRectJButton.setText('Dot Fill Rect');
        Self.dottedFillRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedFillRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedFillRectJButton);
        Self.dottedFillArcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedFillArcJButton.setText('Dot Fill Arc');
        Self.dottedFillArcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedFillArcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedFillArcJButton);
        Self.dottedFillRountRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedFillRountRectJButton.setText('Dot Fill Rnd Rect');
        Self.dottedFillRountRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedFillRountRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedFillRountRectJButton);
        Self.colorJPanel.setLayout(TGridLayout.Create(1, 1));
        Self.colorJPanel.add(Self.colorJList);
        Self.add(Self.colorJPanel);
end;
    

procedure TToolJPanel.dottedFillRountRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedFillRountRectJButton.getText());
end;
    

procedure TToolJPanel.dottedFillArcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedFillArcJButton.getText());
end;
    

procedure TToolJPanel.dottedFillRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedFillRectJButton.getText());
end;
    

procedure TToolJPanel.dottedArcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedArcJButton.getText());
end;
    

procedure TToolJPanel.dottedRectButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedRectButton.getText());
end;
    

procedure TToolJPanel.dottedLineJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedLineJButton.getText());
end;
    

procedure TToolJPanel.fillRoundRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.fillRoundRectJButton.getText());
end;
    

procedure TToolJPanel.fillRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.fillRectJButton.getText());
end;
    

procedure TToolJPanel.fillArcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.fillArcJButton.getText());
end;
    

procedure TToolJPanel.imageJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.imageJButton.getText());
end;
    

procedure TToolJPanel.roundRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.roundRectJButton.getText());
end;
    

procedure TToolJPanel.charJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.charJButton.getText());
end;
    

procedure TToolJPanel.stringJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.stringJButton.getText());
end;
    

procedure TToolJPanel.arcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.arcJButton.getText());
end;
    

procedure TToolJPanel.rectJButtonMouseClicked(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.rectJButton.getText());
end;
    

procedure TToolJPanel.lineJButtonMouseClicked(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.lineJButton.getText());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

