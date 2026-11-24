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
// package org.allbinary.graphics.j2me.dialog
unit NewWorkAreaJDialog;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyFrame, Dimension, JTextField, WindowEvent, JDialog;

type
  {AB:TYPES}
  TNewWorkAreaJDialog = class(TJDialog)
  public
    parent: TMyFrame;
    dimension: TDimension;
    xSizeJTextField: TJTextField;
    ySizeJTextField: TJTextField;
    nameJTextField: TJTextField;
    procedure InitFields;
        constructor Create(parent: TMyFrame; modal: Boolean; dimension_: TDimension; newName: string);
        procedure disposeNewDialog;
        procedure initComponents;
        procedure closeDialog(evt: TWindowEvent);
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  Frame, JButton, GridLayout, JLabel, WindowAdapter, GraphicsException, WorkAreaJPanel, WorkAreaJPanelInterface;


{AB:CODE}

procedure TNewWorkAreaJDialog.InitFields;
begin
  
  
  
  
  
end;
    

constructor TNewWorkAreaJDialog.Create(parent: TMyFrame; modal: Boolean; dimension_: TDimension; newName: string);
var
  submitButton: TJButton;
begin
        inherited Create(TFrame(TJava.ToObject(parent)), modal);
        InitFields;
        try
            Self.initComponents();
            Self.parent := parent;
            Self.xSizeJTextField := TJTextField.Create('12');
            Self.ySizeJTextField := TJTextField.Create('12');
            Self.nameJTextField := TJTextField.Create(newName);
            Self.dimension := dimension_;
            submitButton := TJButton.Create('Ok');
            submitButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
                

            procedure T.actionPerformed(evt: TActionEvent);
begin
                    try
                        Self.disposeNewDialog();
                    except
                        on e: SysUtils.Exception do begin
                        end;
                    end;
end;
*));
            Self.setSize(150, 100);
            Self.getContentPane().setLayout(TGridLayout.Create(5, 2));
            Self.getContentPane().add(TJLabel.Create('Please enter'));
            Self.getContentPane().add(TJLabel.Create(' the size.'));
            Self.getContentPane().add(TJLabel.Create('Name:'));
            Self.getContentPane().add(Self.nameJTextField);
            Self.getContentPane().add(TJLabel.Create('X: '));
            Self.getContentPane().add(Self.xSizeJTextField);
            Self.getContentPane().add(TJLabel.Create('Y: '));
            Self.getContentPane().add(Self.ySizeJTextField);
            Self.getContentPane().add(submitButton);
            Self.show();
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TNewWorkAreaJDialog.disposeNewDialog;
var
  canvasWidth: Integer;
  canvasHeight: Integer;
  newName: string;
  workAreaJPanel_: TWorkAreaJPanel;
begin
        try
            canvasWidth := Self.xSizeJTextField.getText();
            canvasHeight := Self.ySizeJTextField.getText();
            newName := Self.nameJTextField.getText();
            if (newName) = ('') then begin
                raise TGraphicsException.Create('No Name', Self, 'disposeNewDialog');
            end;
            workAreaJPanel_ := TWorkAreaJPanel.Create(newName, Self.dimension, (canvasWidth), (canvasHeight));
            workAreaJPanel_.setLayout(TGridLayout.Create(1, 1));
            Self.parent.add((TJava.ToObject(workAreaJPanel_) as IWorkAreaJPanelInterface));
            Self.dispose_();
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

procedure TNewWorkAreaJDialog.initComponents;
begin
        Self.addWindowListener(TWindowAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.windowClosing(evt: TWindowEvent);
begin
                Self.closeDialog(evt);
end;
*));
        Self.pack();
end;
    

procedure TNewWorkAreaJDialog.closeDialog(evt: TWindowEvent);
begin
        Self.setVisible(False);
        Self.dispose_();
end;
    

class procedure TNewWorkAreaJDialog.main(args: TArray<string>);
begin
        try
            TNewWorkAreaJDialog.Create(TMyFrame.Create(), True, TDimension.Create(100, 100), 'testing').show();
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

