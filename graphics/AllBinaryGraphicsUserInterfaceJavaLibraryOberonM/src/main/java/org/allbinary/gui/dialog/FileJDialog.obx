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
// package org.allbinary.gui.dialog
unit FileJDialog;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, FileJDialogListenerInterface, Frame, ActionEvent, JFileChooser, JDialog;

type
  {AB:TYPES}
  TFileJDialog = class(TJDialog)
  public
    logUtil: TLogUtil;
    finishedListenerInterface: IFileJDialogListenerInterface;
    jFileChooser1: TJFileChooser;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(parent: TFrame; modal: Boolean); overload;
        procedure addFinishedListener(finishedListenerInterface: IFileJDialogListenerInterface); virtual;
        procedure initComponents;
        procedure jFileChooser1ActionPerformed(evt: TActionEvent);
        class procedure main(args: TArray<string>); static;
        function getJFileChooser1: TJFileChooser; virtual;
        procedure setJFileChooser1(jFileChooser1: TJFileChooser); virtual;
  end;

implementation
uses
  ActionListener, GroupLayout, JFrame, ARunnable;


{AB:CODE}

procedure TFileJDialog.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TFileJDialog.Create;
begin
        inherited Create();
        InitFields;
        Self.initComponents();
        Self.getJFileChooser1().setMultiSelectionEnabled(True);
end;
    

constructor TFileJDialog.Create(parent: TFrame; modal: Boolean);
begin
        inherited Create(parent, modal);
        InitFields;
        Self.initComponents();
        Self.getJFileChooser1().setMultiSelectionEnabled(True);
end;
    

procedure TFileJDialog.addFinishedListener(finishedListenerInterface: IFileJDialogListenerInterface);
begin
        Self.finishedListenerInterface := finishedListenerInterface;
end;
    

procedure TFileJDialog.initComponents;
var
  layout: TGroupLayout;
begin
        Self.jFileChooser1 := TJFileChooser.Create();
        Self.setDefaultCloseOperation(Tjavax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        Self.jFileChooser1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jFileChooser1ActionPerformed(evt);
end;
*));
        layout := TGroupLayout.Create(Self.getContentPane());
        Self.getContentPane().setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Torg.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup().addContainerGap(Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).add(Self.jFileChooser1, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap()));
        layout.setVerticalGroup(layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(layout.createSequentialGroup().addContainerGap().add(Self.jFileChooser1, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 357, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap(Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        Self.pack();
end;
    

procedure TFileJDialog.jFileChooser1ActionPerformed(evt: TActionEvent);
var
  files: TArray<TFile>;
begin
        Self.logUtil.putF('Starting Action Command: ' + TJava.ToString(evt.getActionCommand()), TJava.Box(Self), 'ActionPerformed');
        files := Self.getJFileChooser1().getSelectedFiles();
        if (evt.getActionCommand()) = (Self.getJFileChooser1().CANCEL_SELECTION) then begin
            Self.setVisible(False);
        end;
        if (evt.getActionCommand()) = (Self.getJFileChooser1().APPROVE_SELECTION) then begin
            if ((files) <> (nil)) and ((System.Length(files)) > (0)) then begin
                Self.finishedListenerInterface.onFiles(files);
            end;
        end;
end;
    

class procedure TFileJDialog.main(args: TArray<string>);
begin
        Tjava.awt.EventQueue.invokeLater(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
begin
                TFileJDialog.Create(TJFrame.Create(), True).setVisible(True);
end;
*));
end;
    

function TFileJDialog.getJFileChooser1: TJFileChooser;
begin
        Exit(Self.jFileChooser1);
end;
    

procedure TFileJDialog.setJFileChooser1(jFileChooser1: TJFileChooser);
begin
        Self.jFileChooser1 := jFileChooser1;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

