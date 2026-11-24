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
// package org.allbinary.gui.swing.workers
unit JListSwingWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, JList, ListModel, SwingWorker;

type
  {AB:TYPES}
  TJListSwingWorker = class(TSwingWorker)
  public
    jList: TJList;
    listModel: TListModel;
    procedure InitFields;
        constructor Create(jList_: TJList; listModel_: TListModel);
        function doInBackground: TObject; virtual;
        procedure done; virtual;
        function getJList: TJList;
        procedure setJList(jList_: TJList);
        function getListModel: TListModel;
        procedure setListModel(listModel_: TListModel);
  end;

implementation

{AB:CODE}

procedure TJListSwingWorker.InitFields;
begin
  
  
end;
    

constructor TJListSwingWorker.Create(jList_: TJList; listModel_: TListModel);
begin
    inherited Create;
    InitFields;
        Self.setJList(jList_);
        Self.setListModel(listModel_);
end;
    

function TJListSwingWorker.doInBackground: TObject;
begin
        Exit(nil);
end;
    

procedure TJListSwingWorker.done;
begin
        Self.getJList().setModel(Self.getListModel());
end;
    

function TJListSwingWorker.getJList: TJList;
begin
        Exit(Self.jList);
end;
    

procedure TJListSwingWorker.setJList(jList_: TJList);
begin
        Self.jList := jList_;
end;
    

function TJListSwingWorker.getListModel: TListModel;
begin
        Exit(Self.listModel);
end;
    

procedure TJListSwingWorker.setListModel(listModel_: TListModel);
begin
        Self.listModel := listModel_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

